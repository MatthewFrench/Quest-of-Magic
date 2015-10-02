//
//  GameData.m
//  Quest of Magic
//
//  Created by Matthew French on 4/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "GameData.h"


@implementation GameData
@synthesize playerrace,playergender,playerstatus,playerweapon,playerarmor,playertrinket,rareitembuyeritem,playersprite,playername,playerHP,maxHP,playerMP,maxMP,playerLV,playerEXP,gold,walktime,ITEMhealingpotions,gridY,gridX,moveY,moveX,playerY,playerX,slidewallX,slidewallY,rareitembuyerdecide,rareitembuyertime,card,area,northcard,southcard,eastcard,westcard,card20event,walk,walkHPup,walkMPup,lv0TC1,chestitem,rareitemask,chestitemNum,brigandevent,RECENTCARD,NPCalive,NPCspeed,NPCgridY,NPCgridX,NPCspriteY,NPCspriteX,NPCmoveY,NPCmoveX,NPCnewtile,NPCaction,artifact,NPC2alive,spriteX,spriteY,rareitembuyerstate,gridlayout,KEYrusty,NPCsprite,NPC2sprite,NPC2spriteX,NPC2spriteY,NPCnumber,NPC2gridX,NPC2gridY,cardSpawnsNPCs,NPC2moveY,NPC2moveX,battlereturn,enemyID,teleporter,bossbattle,enemydropgoldminus,lv1TC1,lv1TC2,lv1E1,lv2TC1,lv2TC2,lv2TC3,lv2TC4,lv2TC5,lv2E1,lv2E2,lv2B1,lv3E1,lv3E2,lv3E3,lv3M1,lv3M2,lv4E1,lv4E2,lv4E3,lv4B1,lv4M1,lv4M2,lv5E1,lv5E2,lv5E3,lv5E4,lv5M1,lv6E1,lv6E2,lv6E3,lv6E4,lv7B1,KEYiron,TCpuzzlecomplete,wizardevent,NEWcard,playerEXPadd,lv3TC3,lv3TC2,greentiles,tile1,tile2,tile3,tile4,tile5,tilepuzzlecomplete,lv3TC1,lv3TC4,lv3TC5,lv3TC6,lv4TC1,lv4TC2,lv4TC3,KEYbronze,lv4TC4,lv4TC5,lv4TC6,lv5TC1,KEYgold,KEYsilver,slidewallposition,lv5TC2,lv5TC3,lv5TC4,blockrun,doppelgangerevent,lv5TC5,lv6TC1,lv6switch1,lv6TC2,KEYplatinum,lv6TC3,lv6exitsecret,lv6TC4,lv6TC5,lv6switch2,lv6switch3,NPCgridlayout,lv7TC2,lv7TC3,lv7TC4,lv7TC5,lv7TC6,lv7TC7,lv7TC1,event,secretCastle, secretCastle2;
@synthesize theAudio,theSound;
- (id) init {
    playerHP=0;maxHP=0;playerMP=0;maxMP=0;playerLV=0;playerEXP=0;gold=0;walktime=0;ITEMhealingpotions=0;gridY=0;gridX=0;moveY=0;moveX=0;playerY=0;playerX=0;NPCspriteY=0;NPCspriteX=0;slidewallX=0;slidewallY=0;rareitembuyerdecide=0;rareitembuyertime=0;card=0;northcard=0;southcard=0;eastcard=0;westcard=0;card20event=0;walk=0;walkHPup=0;walkMPup=0;lv0TC1=0;rareitemask=0;chestitemNum=0;brigandevent=0;RECENTCARD=0;NPCalive=0;NPCspeed=0;NPCgridY=0;NPCgridX=0;NPCmoveY=0;NPCmoveX=0;NPCnewtile=0;NPCaction=0;artifact=0;NPC2alive=0;spriteX=0;spriteY=0;rareitembuyerstate=0;KEYrusty=0;NPC2spriteX=0;NPC2spriteY=0;cardSpawnsNPCs=0;NPCnumber=0;NPC2gridX=0;NPC2gridY=0;NPC2moveY=0;NPC2moveX=0;battlereturn=0;teleporter=0;bossbattle=0;enemydropgoldminus=0;lv1TC1=0;lv1TC2=0;lv2TC1=0;lv2TC2=0;lv2TC3=0;lv2TC4=0;lv2TC5=0;lv1E1=0;lv2E1=0;lv2E2=0;lv2B1=0;lv3E1=0;lv3E2=0;lv3E3=0;lv3M1=0;lv3M2=0;lv4E1=0;lv4E2=0;lv4E3=0;lv4B1=0;lv4M1=0;lv4M2=0;lv5E1=0;lv5E2=0;lv5E3=0;lv5E4=0;lv5M1=0;lv6E1=0;lv6E2=0;lv6E3=0;lv6E4=0;lv7B1=0;KEYiron=0;TCpuzzlecomplete=0;wizardevent=0;NEWcard=0;playerEXPadd=0;lv3TC3=0;lv3TC2=0;greentiles=0;tile1=0;tile2=0;tile3=0;tile4=0;tile5=0;tilepuzzlecomplete=0;lv3TC1=0;lv3TC4=0;lv3TC5=0;lv3TC6=0,lv4TC3=0,KEYbronze=0,lv4TC4=0,lv4TC5=0,lv4TC6=0,lv5TC1=0,KEYgold=0,KEYsilver=0,slidewallposition=0,lv5TC2=0,lv5TC3=0,lv5TC4=0,blockrun=0,doppelgangerevent=0,lv5TC5=0,lv6TC1=0,lv6switch1=0,lv6TC2=0,KEYplatinum=0,lv6TC3=0,lv6exitsecret=0,lv6TC4=0,lv6TC5=0,lv6switch2=0,lv6switch3=0,lv7TC2=0,lv7TC3=0,lv7TC4=0,lv7TC5=0,lv7TC6=0,lv7TC7=0,lv7TC1=0,event=0;
    
    secretCastle2 = 0;
    
    playerrace = @"Human";
    playergender = @"Male";
    playersprite = @"HumanM1.gif";
    playerHP = 35;
    maxHP = 35;
    playerMP = 15;
    maxMP = 15;
    playerLV = 1;
    playerEXP = 800;
    gold = 0;
    playerstatus = @"Normal";
    playerweapon = @"Hands";
    playerarmor = @"None";
    playertrinket = @"None";
    ITEMhealingpotions = 0;
    playerEXPadd = 0;
    
    secretCastle = 0;
    
    gridY = 4;
    gridX = 4;
    moveY = gridY;
    moveX = gridX;
    playerY = 137;
    playerX = 137;
    //---NPC COORDS----------------------------------------------------------------------------------
    NPCspeed = 50;
    
    NPCgridY = 4;
    NPCgridX = 4;
    NPCspriteY = 137;
    NPCspriteX = 137;
    
    //--/NPC COORDS----------------------------------------------------------------------------------
    slidewallX = 137;
    slidewallY = 137;
    
    rareitembuyerdecide = (rand()%6)+1;
    if (rareitembuyerdecide == 1) rareitembuyeritem = @"Necklace of Luck";
    if (rareitembuyerdecide == 2) rareitembuyeritem = @"Ring of Lesser Healing";
    if (rareitembuyerdecide == 3) rareitembuyeritem = @"Amulet of Protection";
    if (rareitembuyerdecide == 4) rareitembuyeritem = @"Gauntlets of Rage";
    if (rareitembuyerdecide == 5) rareitembuyeritem = @"Bracer of Vampirism";
    if (rareitembuyerdecide == 6) rareitembuyeritem = @"Cloak of Distraction";
    rareitembuyertime = (rand()%15)+1;
    
    audioCache = [[NSMutableDictionary alloc] init];
    
    return self;
}

- (void) dealloc {
    [audioCache removeAllObjects];
    [audioCache release];
    [super dealloc];
}

- (void) encodeWithCoder: (NSCoder *)encoder {
    //Encode NSStrings first
    [encoder encodeObject:playerrace forKey:@"playerrace"];
    [encoder encodeObject:playergender forKey:@"playergender"];
    [encoder encodeObject:playerstatus forKey:@"playerstatus"];
    [encoder encodeObject:playerweapon forKey:@"playerweapon"];
    [encoder encodeObject:playerarmor forKey:@"playerarmor"];
    [encoder encodeObject:playertrinket forKey:@"playertrinket"];
    [encoder encodeObject:rareitembuyeritem forKey:@"rareitembuyeritem"];
    [encoder encodeObject:playersprite forKey:@"playersprite"];
    [encoder encodeObject:playername forKey:@"playername"];
    [encoder encodeObject:area forKey:@"area"];
    [encoder encodeObject:chestitem forKey:@"chestitem"];
    [encoder encodeObject:gridlayout forKey:@"gridlayout"];
    [encoder encodeObject:NPCsprite forKey:@"NPCsprite"];
    [encoder encodeObject:NPC2sprite forKey:@"NPC2sprite"];
    [encoder encodeObject:enemyID forKey:@"enemyID"];
    
    //Now for ints
    [encoder encodeInt:playerHP forKey:@"playerHP"];
    [encoder encodeInt:maxHP forKey:@"maxHP"];
    [encoder encodeInt:maxMP forKey:@"maxMP"];
    [encoder encodeInt:playerLV forKey:@"playerLV"];
    [encoder encodeInt:playerEXP forKey:@"playerEXP"];
    [encoder encodeInt:gold forKey:@"gold"];
    [encoder encodeInt:walktime forKey:@"walktime"];
    [encoder encodeInt:ITEMhealingpotions forKey:@"ITEMhealingpotions"];
    [encoder encodeInt:gridY forKey:@"gridY"];
    [encoder encodeInt:gridX forKey:@"gridX"];
    [encoder encodeInt:moveY forKey:@"moveY"];
    [encoder encodeInt:moveX forKey:@"moveX"];
    [encoder encodeInt:playerY forKey:@"playerY"];
    [encoder encodeInt:playerX forKey:@"playerX"];
    [encoder encodeInt:NPCspriteY forKey:@"NPCspriteY"];
    [encoder encodeInt:NPCspriteX forKey:@"NPCspriteX"];
    [encoder encodeInt:slidewallX forKey:@"slidewallX"];
    [encoder encodeInt:slidewallY forKey:@"slidewallY"];
    [encoder encodeInt:rareitembuyerdecide forKey:@"rareitembuyerdecide"];
    [encoder encodeInt:rareitembuyertime forKey:@"rareitembuyertime"];
    [encoder encodeInt:card forKey:@"card"];
    [encoder encodeInt:northcard forKey:@"northcard"];
    [encoder encodeInt:southcard forKey:@"southcard"];
    [encoder encodeInt:eastcard forKey:@"eastcard"];
    [encoder encodeInt:westcard forKey:@"westcard"];
    [encoder encodeInt:card20event forKey:@"card20event"];
    [encoder encodeInt:walk forKey:@"walk"];
    [encoder encodeInt:walkHPup forKey:@"walkHPup"];
    [encoder encodeInt:walkMPup forKey:@"walkMPup"];
    [encoder encodeInt:lv0TC1 forKey:@"lv0TC1"];
    [encoder encodeInt:rareitemask forKey:@"rareitemask"];
    [encoder encodeInt:chestitemNum forKey:@"chestitemNum"];
    [encoder encodeInt:brigandevent forKey:@"brigandevent"];
    [encoder encodeInt:RECENTCARD forKey:@"RECENTCARD"];
    [encoder encodeInt:NPCalive forKey:@"NPCalive"];
    [encoder encodeInt:NPCspeed forKey:@"NPCspeed"];
    [encoder encodeInt:NPCgridY forKey:@"NPCgridY"];
    [encoder encodeInt:NPCgridX forKey:@"NPCgridX"];
    [encoder encodeInt:NPCmoveY forKey:@"NPCmoveY"];
    [encoder encodeInt:NPCmoveX forKey:@"NPCmoveX"];
    [encoder encodeInt:NPCnewtile forKey:@"NPCnewtile"];
    [encoder encodeInt:NPCaction forKey:@"NPCaction"];
    [encoder encodeInt:artifact forKey:@"artifact"];
    [encoder encodeInt:NPC2alive forKey:@"NPC2alive"];
    [encoder encodeInt:spriteX forKey:@"spriteX"];
    [encoder encodeInt:spriteY forKey:@"spriteY"];
    [encoder encodeInt:rareitembuyerstate forKey:@"rareitembuyerstate"];
    [encoder encodeInt:KEYrusty forKey:@"KEYrusty"];
    [encoder encodeInt:NPC2spriteX forKey:@"NPC2spriteX"];
    [encoder encodeInt:NPC2spriteY forKey:@"NPC2spriteY"];
    [encoder encodeInt:cardSpawnsNPCs forKey:@"cardSpawnsNPCs"];
    [encoder encodeInt:NPCnumber forKey:@"NPCnumber"];
    [encoder encodeInt:NPC2gridX forKey:@"NPC2gridX"];
    
    [encoder encodeInt:NPC2gridY forKey:@"NPC2gridY"];
    [encoder encodeInt:NPC2moveY forKey:@"NPC2moveY"];
    [encoder encodeInt:NPC2moveX forKey:@"NPC2moveX"];
    [encoder encodeInt:battlereturn forKey:@"battlereturn"];
    [encoder encodeInt:teleporter forKey:@"teleporter"];
    [encoder encodeInt:bossbattle forKey:@"bossbattle"];
    [encoder encodeInt:enemydropgoldminus forKey:@"enemydropgoldminus"];
    [encoder encodeInt:lv1TC1 forKey:@"lv1TC1"];
    [encoder encodeInt:lv1TC2 forKey:@"lv1TC2"];
    [encoder encodeInt:lv2TC1 forKey:@"lv2TC1"];
    [encoder encodeInt:lv2TC2 forKey:@"lv2TC2"];
    [encoder encodeInt:lv2TC3 forKey:@"lv2TC3"];
    [encoder encodeInt:lv2TC4 forKey:@"lv2TC4"];
    [encoder encodeInt:lv2TC5 forKey:@"lv2TC5"];
    [encoder encodeInt:lv1E1 forKey:@"lv1E1"];
    [encoder encodeInt:lv2E1 forKey:@"lv2E1"];
    [encoder encodeInt:lv2E2 forKey:@"lv2E2"];
    [encoder encodeInt:lv2B1 forKey:@"lv2B1"];
    [encoder encodeInt:lv3E1 forKey:@"lv3E1"];
    [encoder encodeInt:lv3E2 forKey:@"lv3E2"];
    [encoder encodeInt:lv3E3 forKey:@"lv3E3"];
    [encoder encodeInt:lv3M1 forKey:@"lv3M1"];
    [encoder encodeInt:lv3M2 forKey:@"lv3M2"];
    [encoder encodeInt:lv4E1 forKey:@"lv4E1"];
    [encoder encodeInt:lv4E2 forKey:@"lv4E2"];
    [encoder encodeInt:lv4E3 forKey:@"lv4E3"];
    [encoder encodeInt:lv4B1 forKey:@"lv4B1"];
    [encoder encodeInt:lv4M1 forKey:@"lv4M1"];
    [encoder encodeInt:lv4M2 forKey:@"lv4M2"];
    
    [encoder encodeInt:lv5E1 forKey:@"lv5E1"];
    [encoder encodeInt:lv5E2 forKey:@"lv5E2"];
    [encoder encodeInt:lv5E3 forKey:@"lv5E3"];
    [encoder encodeInt:lv5E4 forKey:@"lv5E4"];
    [encoder encodeInt:lv5M1 forKey:@"lv5M1"];
    [encoder encodeInt:lv6E1 forKey:@"lv6E1"];
    [encoder encodeInt:lv6E2 forKey:@"lv6E2"];
    [encoder encodeInt:lv6E3 forKey:@"lv6E3"];
    [encoder encodeInt:lv6E4 forKey:@"lv6E4"];
    [encoder encodeInt:lv7B1 forKey:@"lv7B1"];
    [encoder encodeInt:KEYiron forKey:@"KEYiron"];
    [encoder encodeInt:TCpuzzlecomplete forKey:@"TCpuzzlecomplete"];
    [encoder encodeInt:wizardevent forKey:@"wizardevent"];
    [encoder encodeInt:NEWcard forKey:@"NEWcard"];
    [encoder encodeInt:playerEXPadd forKey:@"playerEXPadd"];
    [encoder encodeInt:lv3TC3 forKey:@"lv3TC3"];
    [encoder encodeInt:lv3TC2 forKey:@"lv3TC2"];
    
    [encoder encodeInt:greentiles forKey:@"greentiles"];
    [encoder encodeInt:tile1 forKey:@"tile1"];
    [encoder encodeInt:tile2 forKey:@"tile2"];
    [encoder encodeInt:tile3 forKey:@"tile3"];
    [encoder encodeInt:tile4 forKey:@"tile4"];
    [encoder encodeInt:tile5 forKey:@"tile5"];
    [encoder encodeInt:tilepuzzlecomplete forKey:@"tilepuzzlecomplete"];
    
    [encoder encodeInt:lv3TC1 forKey:@"lv3TC1"];
    [encoder encodeInt:lv3TC4 forKey:@"lv3TC4"];
    [encoder encodeInt:lv3TC5 forKey:@"lv3TC5"];
    [encoder encodeInt:lv3TC6 forKey:@"lv3TC6"];
    
    [encoder encodeInt:lv4TC1 forKey:@"lv4TC1"];
    [encoder encodeInt:lv4TC2 forKey:@"lv4TC2"];
    [encoder encodeInt:lv4TC3 forKey:@"lv4TC3"];
    [encoder encodeInt:KEYbronze forKey:@"KEYbronze"];
    [encoder encodeInt:lv4TC4 forKey:@"lv4TC4"];
    [encoder encodeInt:lv4TC5 forKey:@"lv4TC5"];
    [encoder encodeInt:lv4TC6 forKey:@"lv4TC6"];
    [encoder encodeInt:lv5TC1 forKey:@"lv5TC1"];
    
    [encoder encodeInt:KEYgold forKey:@"KEYgold"];
    [encoder encodeInt:KEYsilver forKey:@"KEYsilver"];
    
    [encoder encodeInt:slidewallposition forKey:@"slidewallposition"];
    
    [encoder encodeInt:lv5TC2 forKey:@"lv5TC2"];
    [encoder encodeInt:lv5TC3 forKey:@"lv5TC3"];
    [encoder encodeInt:lv5TC4 forKey:@"lv5TC4"];
    
    [encoder encodeInt:blockrun forKey:@"blockrun"];
    [encoder encodeInt:doppelgangerevent forKey:@"doppelgangerevent"];
    
    [encoder encodeInt:lv5TC5 forKey:@"lv5TC5"];
    
    [encoder encodeInt:lv6TC1 forKey:@"lv6TC1"];
    [encoder encodeInt:lv6switch1 forKey:@"lv6switch1"];

    [encoder encodeInt:lv6TC2 forKey:@"lv6TC2"];
    [encoder encodeInt:KEYplatinum forKey:@"KEYplatinum"];
    [encoder encodeInt:lv6TC3 forKey:@"lv6TC3"];
    [encoder encodeInt:lv6exitsecret forKey:@"lv6exitsecret"];
    [encoder encodeInt:lv6TC4 forKey:@"lv6TC4"];
    [encoder encodeInt:lv6TC5 forKey:@"lv6TC5"];
    [encoder encodeInt:lv6switch2 forKey:@"lv6switch2"];
    [encoder encodeInt:lv6switch3 forKey:@"lv6switch3"];
    
    [encoder encodeInt:lv7TC2 forKey:@"lv7TC2"];
    [encoder encodeInt:lv7TC3 forKey:@"lv7TC3"];
    [encoder encodeInt:lv7TC4 forKey:@"lv7TC4"];
    [encoder encodeInt:lv7TC5 forKey:@"lv7TC5"];
    [encoder encodeInt:lv7TC6 forKey:@"lv7TC6"];
    [encoder encodeInt:lv7TC7 forKey:@"lv7TC7"];
    [encoder encodeInt:lv7TC1 forKey:@"lv7TC1"];
    
    [encoder encodeInt:event forKey:@"event"];
    
    [encoder encodeInt:secretCastle2 forKey:@"secretCastle2"];
}

- (id) initWithCoder: (NSCoder *) coder {
    self = [self init];
    //NSStrings
	playerrace = [[coder decodeObjectForKey:@"playerrace"] retain];
	playergender = [[coder decodeObjectForKey:@"playergender"] retain];
    playerstatus = [[coder decodeObjectForKey:@"playerstatus"] retain];
    playerweapon = [[coder decodeObjectForKey:@"playerweapon"] retain];
    playerarmor = [[coder decodeObjectForKey:@"playerarmor"] retain];
    playertrinket = [[coder decodeObjectForKey:@"playertrinket"] retain];
    rareitembuyeritem = [[coder decodeObjectForKey:@"rareitembuyeritem"] retain];
    playersprite = [[coder decodeObjectForKey:@"playersprite"] retain];
    playername = [[coder decodeObjectForKey:@"playername"] retain];
    area = [[coder decodeObjectForKey:@"area"] retain];
    chestitem = [[coder decodeObjectForKey:@"chestitem"] retain];
    gridlayout = [[coder decodeObjectForKey:@"gridlayout"] retain];
    NPCsprite = [[coder decodeObjectForKey:@"NPCsprite"] retain];
    NPC2sprite = [[coder decodeObjectForKey:@"NPC2sprite"] retain];
    enemyID = [[coder decodeObjectForKey:@"enemyID"] retain];
    //ints
    playerHP = [coder decodeIntForKey:@"playerHP"];
    maxHP = [coder decodeIntForKey:@"maxHP"];
    maxMP = [coder decodeIntForKey:@"maxMP"];
    playerLV = [coder decodeIntForKey:@"playerLV"];
    playerEXP = [coder decodeIntForKey:@"playerEXP"];
    gold = [coder decodeIntForKey:@"gold"];
    walktime = [coder decodeIntForKey:@"walktime"];
    ITEMhealingpotions = [coder decodeIntForKey:@"ITEMhealingpotions"];
    gridY = [coder decodeIntForKey:@"gridY"];
    gridX = [coder decodeIntForKey:@"gridX"];
    moveY = [coder decodeIntForKey:@"moveY"];
    moveX = [coder decodeIntForKey:@"moveX"];
    playerY = [coder decodeIntForKey:@"playerY"];
    playerX = [coder decodeIntForKey:@"playerX"];
    NPCspriteY = [coder decodeIntForKey:@"NPCspriteY"];
    NPCspriteX = [coder decodeIntForKey:@"NPCspriteX"];
    slidewallX = [coder decodeIntForKey:@"slidewallX"];
    slidewallY = [coder decodeIntForKey:@"slidewallY"];
    rareitembuyerdecide = [coder decodeIntForKey:@"rareitembuyerdecide"];
    rareitembuyertime = [coder decodeIntForKey:@"rareitembuyertime"];
    card = [coder decodeIntForKey:@"card"];
    northcard = [coder decodeIntForKey:@"northcard"];
    southcard = [coder decodeIntForKey:@"southcard"];
    eastcard = [coder decodeIntForKey:@"eastcard"];
    westcard = [coder decodeIntForKey:@"westcard"];
    card20event = [coder decodeIntForKey:@"card20event"];
    walk = [coder decodeIntForKey:@"walk"];
    walkHPup = [coder decodeIntForKey:@"walkHPup"];
    walkMPup = [coder decodeIntForKey:@"walkMPup"];
    lv0TC1 = [coder decodeIntForKey:@"lv0TC1"];
    rareitemask = [coder decodeIntForKey:@"rareitemask"];
    chestitemNum = [coder decodeIntForKey:@"chestitemNum"];
    brigandevent = [coder decodeIntForKey:@"brigandevent"];
    
    RECENTCARD = [coder decodeIntForKey:@"RECENTCARD"];
    NPCalive = [coder decodeIntForKey:@"NPCalive"];
    NPCspeed = [coder decodeIntForKey:@"NPCspeed"];
    NPCgridY = [coder decodeIntForKey:@"NPCgridY"];
    NPCgridX = [coder decodeIntForKey:@"NPCgridX"];
    NPCmoveY = [coder decodeIntForKey:@"NPCmoveY"];
    NPCmoveX = [coder decodeIntForKey:@"NPCmoveX"];
    NPCnewtile = [coder decodeIntForKey:@"NPCnewtile"];
    NPCaction = [coder decodeIntForKey:@"NPCaction"];
    artifact = [coder decodeIntForKey:@"artifact"];
    NPC2alive = [coder decodeIntForKey:@"NPC2alive"];
    spriteX = [coder decodeIntForKey:@"spriteX"];
    spriteY = [coder decodeIntForKey:@"spriteY"];
    rareitembuyerstate = [coder decodeIntForKey:@"rareitembuyerstate"];
    KEYrusty = [coder decodeIntForKey:@"KEYrusty"];
    NPC2spriteX = [coder decodeIntForKey:@"NPC2spriteX"];
    NPC2spriteY = [coder decodeIntForKey:@"NPC2spriteY"];
    cardSpawnsNPCs = [coder decodeIntForKey:@"cardSpawnsNPCs"];
    NPCnumber = [coder decodeIntForKey:@"NPCnumber"];
    NPC2gridX = [coder decodeIntForKey:@"NPC2gridX"];
    NPC2gridY = [coder decodeIntForKey:@"NPC2gridY"];
    NPC2moveY = [coder decodeIntForKey:@"NPC2moveY"];
    NPC2moveX = [coder decodeIntForKey:@"NPC2moveX"];
    teleporter = [coder decodeIntForKey:@"teleporter"];
    bossbattle = [coder decodeIntForKey:@"bossbattle"];
    enemydropgoldminus = [coder decodeIntForKey:@"enemydropgoldminus"];
    lv1TC1 = [coder decodeIntForKey:@"lv1TC1"];
    lv1TC2 = [coder decodeIntForKey:@"lv1TC2"];
    lv2TC1 = [coder decodeIntForKey:@"lv2TC1"];
    lv2TC2 = [coder decodeIntForKey:@"lv2TC2"];
    lv2TC3 = [coder decodeIntForKey:@"lv2TC3"];
    lv2TC4 = [coder decodeIntForKey:@"lv2TC4"];
    lv2TC5 = [coder decodeIntForKey:@"lv2TC5"];
    
    lv1E1 = [coder decodeIntForKey:@"lv1E1"];
    lv2E1 = [coder decodeIntForKey:@"lv2E1"];
    lv2E2 = [coder decodeIntForKey:@"lv2E2"];
    lv2B1 = [coder decodeIntForKey:@"lv2B1"];
    lv3E1 = [coder decodeIntForKey:@"lv3E1"];
    lv3E2 = [coder decodeIntForKey:@"lv3E2"];
    lv3E3 = [coder decodeIntForKey:@"lv3E3"];
    lv3M1 = [coder decodeIntForKey:@"lv3M1"];
    lv3M2 = [coder decodeIntForKey:@"lv3M2"];
    lv4E1 = [coder decodeIntForKey:@"lv4E1"];
    lv4E2 = [coder decodeIntForKey:@"lv4E2"];
    lv4E3 = [coder decodeIntForKey:@"lv4E3"];
    lv4B1 = [coder decodeIntForKey:@"lv4B1"];
    lv4M1 = [coder decodeIntForKey:@"lv4M1"];
    lv4M2 = [coder decodeIntForKey:@"lv4M2"];
    lv5E1 = [coder decodeIntForKey:@"lv5E1"];
    lv5E2 = [coder decodeIntForKey:@"lv5E2"];
    lv5E3 = [coder decodeIntForKey:@"lv5E3"];
    lv5E4 = [coder decodeIntForKey:@"lv5E4"];
    lv5M1 = [coder decodeIntForKey:@"lv5M1"];
    lv6E1 = [coder decodeIntForKey:@"lv6E1"];
    lv6E2 = [coder decodeIntForKey:@"lv6E2"];
    lv6E3 = [coder decodeIntForKey:@"lv6E3"];
    lv6E4 = [coder decodeIntForKey:@"lv6E4"];
    lv7B1 = [coder decodeIntForKey:@"lv7B1"];
    KEYiron = [coder decodeIntForKey:@"KEYiron"];
    TCpuzzlecomplete = [coder decodeIntForKey:@"TCpuzzlecomplete"];
    wizardevent = [coder decodeIntForKey:@"wizardevent"];
    NEWcard = [coder decodeIntForKey:@"NEWcard"];
    playerEXPadd = [coder decodeIntForKey:@"playerEXPadd"];
    lv3TC3 = [coder decodeIntForKey:@"lv3TC3"];
    lv3TC2 = [coder decodeIntForKey:@"lv3TC2"];
    
    greentiles = [coder decodeIntForKey:@"greentiles"];
    tile1 = [coder decodeIntForKey:@"tile1"];
    tile2 = [coder decodeIntForKey:@"tile2"];
    tile3 = [coder decodeIntForKey:@"tile3"];
    tile4 = [coder decodeIntForKey:@"tile4"];
    tile5 = [coder decodeIntForKey:@"tile5"];
    tilepuzzlecomplete = [coder decodeIntForKey:@"tilepuzzlecomplete"];
    
    lv3TC1 = [coder decodeIntForKey:@"lv3TC1"];
    lv3TC4 = [coder decodeIntForKey:@"lv3TC4"];
    lv3TC5 = [coder decodeIntForKey:@"lv3TC5"];
    lv3TC6 = [coder decodeIntForKey:@"lv3TC6"];
    
    lv4TC1 = [coder decodeIntForKey:@"lv4TC1"];
    lv4TC2 = [coder decodeIntForKey:@"lv4TC2"];
    lv4TC3 = [coder decodeIntForKey:@"lv4TC3"];
    KEYbronze = [coder decodeIntForKey:@"KEYbronze"];
    lv4TC4 = [coder decodeIntForKey:@"lv4TC4"];
    lv4TC5 = [coder decodeIntForKey:@"lv4TC5"];
    lv4TC6 = [coder decodeIntForKey:@"lv4TC6"];
    lv5TC1 = [coder decodeIntForKey:@"lv5TC1"];
    
    KEYgold = [coder decodeIntForKey:@"KEYgold"];
    KEYsilver = [coder decodeIntForKey:@"KEYsilver"];
    
    slidewallposition = [coder decodeIntForKey:@"slidewallposition"];
    
    lv5TC2 = [coder decodeIntForKey:@"lv5TC2"];
    lv5TC3 = [coder decodeIntForKey:@"lv5TC3"];
    lv5TC4 = [coder decodeIntForKey:@"lv5TC4"];
    
    blockrun = [coder decodeIntForKey:@"blockrun"];
    doppelgangerevent = [coder decodeIntForKey:@"doppelgangerevent"];
    
    lv5TC5 = [coder decodeIntForKey:@"lv5TC5"];
    
    lv6TC1 = [coder decodeIntForKey:@"lv6TC1"];
    lv6switch1 = [coder decodeIntForKey:@"lv6switch1"];
    lv6TC2 = [coder decodeIntForKey:@"lv6TC2"];
    KEYplatinum = [coder decodeIntForKey:@"KEYplatinum"];
    lv6TC3 = [coder decodeIntForKey:@"lv6TC3"];
    lv6exitsecret = [coder decodeIntForKey:@"lv6exitsecret"];
    lv6TC4 = [coder decodeIntForKey:@"lv6TC4"];
    lv6TC5 = [coder decodeIntForKey:@"lv6TC5"];
    lv6switch2 = [coder decodeIntForKey:@"lv6switch2"];
    lv6switch3 = [coder decodeIntForKey:@"lv6switch3"];
    
    lv7TC2 = [coder decodeIntForKey:@"lv7TC2"];
    lv7TC3 = [coder decodeIntForKey:@"lv7TC3"];
    lv7TC4 = [coder decodeIntForKey:@"lv7TC4"];
    lv7TC5 = [coder decodeIntForKey:@"lv7TC5"];
    lv7TC6 = [coder decodeIntForKey:@"lv7TC6"];
    lv7TC7 = [coder decodeIntForKey:@"lv7TC7"];
    lv7TC1 = [coder decodeIntForKey:@"lv7TC1"];
    
    event = [coder decodeIntForKey:@"event"];
    
    secretCastle2 = [coder decodeIntForKey:@"secretCastle2"];
    
    return self;
}
- (void)playAudio:(NSString*)audio {
    if (theAudio) {[theAudio release];theAudio = nil;}
    
    if (![audioCache objectForKey:audio]) {
        [audioCache setValue:[NSData dataWithContentsOfURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:audio ofType:@"caf"]]] forKey:audio];
    }
    
    theAudio=[[AVAudioPlayer alloc] initWithData:[audioCache objectForKey:audio] error:nil];
    theAudio.numberOfLoops = -1;
    theAudio.volume = 1.0;
    [theAudio play];
}
- (void)playSoundEffect:(NSString*)sound {
    if (theSound) {[theSound release];theSound = nil;}
    
    if (![audioCache objectForKey:sound]) {
        [audioCache setValue:[NSData dataWithContentsOfURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:sound ofType:@"wav"]]] forKey:sound];
    }
    
    theSound=[[AVAudioPlayer alloc] initWithData:[audioCache objectForKey:sound] error:nil];
    theSound.numberOfLoops = 0;
    theSound.volume = 1.0;
    [theSound play];
}
@end
