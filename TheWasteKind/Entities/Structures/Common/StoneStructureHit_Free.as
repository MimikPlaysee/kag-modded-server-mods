//scale the damage:
//      knights cant damage
//      arrows cant damage

#include "Hitters.as";

f32 onHit(CBlob@ this, Vec2f worldPoint, Vec2f velocity, f32 damage, CBlob@ hitterBlob, u8 customData)
{
	f32 dmg = damage;
	switch (customData)
	{
		case Hitters::builder:
			dmg *= 2.0f; //builder is great at smashing stuff
			break;

		case Hitters::sword:
		case Hitters::arrow:
		case Hitters::stab:
			dmg = 0.0f;
			break;

		case Hitters::bomb:
			dmg *= 0.0f;
			break;

		case Hitters::keg:
		case Hitters::explosion:
			dmg *= 0.0f;
			break;

		case Hitters::bomb_arrow:
			dmg *= 0.0f;
			break;

		case Hitters::cata_stones:
			dmg *= 0.0f;
			break;
		case Hitters::crush:
			dmg *= 0.0f;
			break;

		case Hitters::flying: // boat ram
			dmg *= 0.0f;
			break;
	}

	return dmg;
}
