//
//  GameData.h
//  Quest of Magic
//
//  Created by Matthew French on 4/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MediaPlayer/MediaPlayer.h"
#import <AVFoundation/AVAudioPlayer.h>

@interface GameData : NSObject {
    NSMutableDictionary* audioCache;
}

@property(nonatomic,assign) NSString* playerrace,*playergender,*playerstatus,*playerweapon,*playerarmor,*playertrinket,*rareitembuyeritem,*playersprite,*playername,*area,*chestitem,*gridlayout,*NPCsprite,*NPC2sprite,*enemyID,*NPCgridlayout;
@property(nonatomic) int playerHP,maxHP,playerMP,maxMP,playerLV,playerEXP,gold,walktime,ITEMhealingpotions,gridY,gridX,moveY,moveX,playerY,playerX,NPCspriteY,NPCspriteX,slidewallX,slidewallY,rareitembuyerdecide,rareitembuyertime,card,northcard,southcard,eastcard,westcard,card20event,walk,walkHPup,walkMPup,lv0TC1,rareitemask,chestitemNum,brigandevent,RECENTCARD,NPCalive,NPCspeed,NPCgridY,NPCgridX,NPCmoveY,NPCmoveX,NPCnewtile,NPCaction,artifact,NPC2alive,spriteX,spriteY,rareitembuyerstate,KEYrusty,NPC2spriteX,NPC2spriteY,cardSpawnsNPCs,NPCnumber,NPC2gridX,NPC2gridY,NPC2moveY,NPC2moveX,battlereturn,teleporter,bossbattle,enemydropgoldminus,lv1TC1,lv1TC2,lv2TC1,lv2TC2,lv2TC3,lv2TC4,lv2TC5,lv1E1,lv2E1,lv2E2,lv2B1,lv3E1,lv3E2,lv3E3,lv3M1,lv3M2,lv4E1,lv4E2,lv4E3,lv4B1,lv4M1,lv4M2,lv5E1,lv5E2,lv5E3,lv5E4,lv5M1,lv6E1,lv6E2,lv6E3,lv6E4,lv7B1,KEYiron,TCpuzzlecomplete,wizardevent,NEWcard,playerEXPadd,lv3TC3,lv3TC2,greentiles,tile1,tile2,tile3,tile4,tile5,tilepuzzlecomplete,lv3TC1,lv3TC4,lv3TC5,lv3TC6,lv4TC1,lv4TC2,lv4TC3,KEYbronze,lv4TC4,lv4TC5,lv4TC6,lv5TC1,KEYgold,KEYsilver,slidewallposition,lv5TC2,lv5TC3,lv5TC4,blockrun,doppelgangerevent,lv5TC5,lv6TC1,lv6switch1,lv6TC2,KEYplatinum,lv6TC3,lv6exitsecret,lv6TC4,lv6TC5,lv6switch2,lv6switch3,lv7TC2,lv7TC3,lv7TC4,lv7TC5,lv7TC6,lv7TC7,lv7TC1,event, secretCastle, secretCastle2;
@property(nonatomic,assign) AVAudioPlayer *theAudio,*theSound;


- (void)playSoundEffect:(NSString*)sound;
- (void)playAudio:(NSString*)audio;

@end
