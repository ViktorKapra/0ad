// Number of rounds of firing per 2 seconds.
const roundCount = 10;
const attackType = "Ranged";

function WarnEnemy() { }

WarnEnemy.prototype.Schema =
	"<ref name='anything'/>";

WarnEnemy.prototype.MAX_PREFERENCE_BONUS = 2;

WarnEnemy.prototype.Init = function () {
	this.targetUnits = [];
	warn("Here 14");
};

//WarnEnemy.prototype.OnGarrisonedUnitsChanged = function (msg) {
//	let classes = this.template.GarrisonArrowClasses;
//	for (let ent of msg.added) {
//		let cmpIdentity = Engine.QueryInterface(ent, IID_Identity);
//		if (cmpIdentity && MatchesClassList(cmpIdentity.GetClassesList(), classes))
//			++this.archersGarrisoned;
//	}
//	for (let ent of msg.removed) {
//		let cmpIdentity = Engine.QueryInterface(ent, IID_Identity);
//		if (cmpIdentity && MatchesClassList(cmpIdentity.GetClassesList(), classes))
//			--this.archersGarrisoned;
//	}
//};

WarnEnemy.prototype.OnOwnershipChanged = function (msg) {
	this.targetUnits = [];
	this.SetupRangeQuery();

};

WarnEnemy.prototype.OnDiplomacyChanged = function (msg) {
	if (!IsOwnedByPlayer(msg.player, this.entity))
		return;

	// Remove maybe now allied/neutral units.
	this.targetUnits = [];
	this.SetupRangeQuery();

};

WarnEnemy.prototype.OnDestroy = function () {
	if (this.timer) {
		let cmpTimer = Engine.QueryInterface(SYSTEM_ENTITY, IID_Timer);
		cmpTimer.CancelTimer(this.timer);
		this.timer = undefined;
	}

	// Clean up range queries.
	let cmpRangeManager = Engine.QueryInterface(SYSTEM_ENTITY, IID_RangeManager);
	if (this.enemyUnitsQuery)
		cmpRangeManager.DestroyActiveQuery(this.enemyUnitsQuery);
	if (this.gaiaUnitsQuery)
		cmpRangeManager.DestroyActiveQuery(this.gaiaUnitsQuery);
};


/**
 * Setup the Range Query to detect units coming in & out of range.
 */
WarnEnemy.prototype.SetupRangeQuery = function () {

	warn("Here 68");
	var cmpRangeManager = Engine.QueryInterface(SYSTEM_ENTITY, IID_RangeManager);
	if (this.enemyUnitsQuery) {

		cmpRangeManager.DestroyActiveQuery(this.enemyUnitsQuery);
		this.enemyUnitsQuery = undefined;
	}

	var cmpPlayer = QueryOwnerInterface(this.entity);
	if (!cmpPlayer)
		return;

	var enemies = cmpPlayer.GetEnemies();
	// Remove gaia.
	if (enemies.length && enemies[0] == 0)
		enemies.shift();

	if (!enemies.length)
		return;

	const range = Engine.QueryInterface(this.entity, IID_Vision).GetRange();
	const yOrigin = 0;
	// This takes entity sizes into accounts, so no need to compensate for structure size.
	this.enemyUnitsQuery = cmpRangeManager.CreateActiveParabolicQuery(
		this.entity, range.min, range.max, yOrigin,
		enemies, IID_Resistance, cmpRangeManager.GetEntityFlagMask("normal"));


	cmpRangeManager.EnableActiveQuery(this.enemyUnitsQuery);
};



/**
 * Called when units enter or leave range.
 */
WarnEnemy.prototype.OnRangeUpdate = function (msg) {

	warn("Here 105");

	// Target enemy units except non-dangerous animals.
	if (msg.tag == this.gaiaUnitsQuery) {
		msg.added = msg.added.filter(e => {
			let cmpUnitAI = Engine.QueryInterface(e, IID_UnitAI);
			return cmpUnitAI && (!cmpUnitAI.IsAnimal() || cmpUnitAI.IsDangerousAnimal());
		});
	}
	else if (msg.tag != this.enemyUnitsQuery)
	{
		warn("Here 118");
		return;
	}
	// Add new targets.
	for (let entity of msg.added)
			this.targetUnits.push(entity);
	warn("There is an Enemy 122");
	// Remove targets outside of vision-range.
	for (let entity of msg.removed) {
		let index = this.targetUnits.indexOf(entity);
		if (index > -1)
			this.targetUnits.splice(index, 1);
	}

	if (this.targetUnits.length)
		warn("There is an Enemy");
};

WarnEnemy.prototype.SetUnitAITarget = function (ent) {
	this.unitAITarget = ent;
	//if (ent)
		//this.StartTimer();
};


/**
 * Returns true if the target entity is visible through the FoW/SoD.
 */
WarnEnemy.prototype.CheckTargetVisible = function (target) {
	var cmpOwnership = Engine.QueryInterface(this.entity, IID_Ownership);
	if (!cmpOwnership)
		return false;

	// Entities that are hidden and miraged are considered visible.
	var cmpFogging = Engine.QueryInterface(target, IID_Fogging);
	if (cmpFogging && cmpFogging.IsMiraged(cmpOwnership.GetOwner()))
		return true;

	// Either visible directly, or visible in fog.
	let cmpRangeManager = Engine.QueryInterface(SYSTEM_ENTITY, IID_RangeManager);
	return cmpRangeManager.GetLosVisibility(target, cmpOwnership.GetOwner()) != "hidden";
};

Engine.RegisterComponentType(IID_WarnEnemy, "WarnEnemy", WarnEnemy);
