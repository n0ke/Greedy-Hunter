{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "rm_main",
  "creationCodeFile": "rooms/rm_main/RoomCreationCode.gml",
  "inheritCode": false,
  "inheritCreationOrder": false,
  "inheritLayers": false,
  "instanceCreationOrder": [
    {"name":"inst_21847619","path":"rooms/rm_main/rm_main.yy",},
    {"name":"inst_501A8171","path":"rooms/rm_main/rm_main.yy",},
    {"name":"inst_32577D84","path":"rooms/rm_main/rm_main.yy",},
    {"name":"inst_3207C177","path":"rooms/rm_main/rm_main.yy",},
    {"name":"inst_4625D275","path":"rooms/rm_main/rm_main.yy",},
    {"name":"inst_6B72B75","path":"rooms/rm_main/rm_main.yy",},
  ],
  "isDnd": false,
  "layers": [
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"VFX","depth":0,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Instances","depth":100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_501A8171","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_camera","path":"objects/obj_camera/obj_camera.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":32.0,"y":64.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_32577D84","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_room_gen","path":"objects/obj_room_gen/obj_room_gen.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":0.0,"y":0.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_21847619","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_main","path":"objects/obj_main/obj_main.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":32.0,"y":0.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Balas","depth":200,"effectEnabled":true,"effectType":"_effect_glow","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[
        {"name":"g_GlowRadius","type":0,"value":"40",},
        {"name":"g_GlowQuality","type":0,"value":"3",},
        {"name":"g_GlowIntensity","type":0,"value":"1",},
        {"name":"g_GlowGamma","type":0,"value":"1.25",},
        {"name":"g_GlowAlpha","type":0,"value":"1",},
      ],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"vacuo","depth":300,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_3207C177","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_colisao_sangue","path":"objects/obj_colisao_sangue/obj_colisao_sangue.yy",},"properties":[],"rotation":0.0,"scaleX":16.0,"scaleY":16.0,"x":0.0,"y":0.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_4625D275","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_blood_controler","path":"objects/obj_blood_controler/obj_blood_controler.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":352.0,"y":512.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_6B72B75","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_hud","path":"objects/obj_hud/obj_hud.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":832.0,"y":512.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","animationFPS":30.0,"animationSpeedType":0,"colour":4278190080,"depth":400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":true,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":null,"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":true,"x":0,"y":0,},
  ],
  "parent": {
    "name": "Asset",
    "path": "folders/Asset.yy",
  },
  "parentRoom": null,
  "physicsSettings": {
    "inheritPhysicsSettings": false,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 10.0,
    "PhysicsWorldPixToMetres": 0.1,
  },
  "roomSettings": {
    "Height": 1024,
    "inheritRoomSettings": false,
    "persistent": false,
    "Width": 1024,
  },
  "sequenceId": null,
  "views": [
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":true,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
  ],
  "viewSettings": {
    "clearDisplayBuffer": true,
    "clearViewBackground": false,
    "enableViews": true,
    "inheritViewSettings": false,
  },
  "volume": 1.0,
}