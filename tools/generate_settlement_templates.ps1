$ErrorActionPreference='Stop'
$root=Split-Path -Parent $PSScriptRoot
Add-Type -Path (Join-Path $PSScriptRoot 'ValttherosNbt.cs')
$data=Join-Path $root 'content\valttheros_communities\data\valttheros'
$templates=Join-Path $data 'structures\settlements'
$pools=Join-Path $data 'worldgen\template_pool'
$structures=Join-Path $data 'worldgen\structure'
$sets=Join-Path $data 'worldgen\structure_set'
foreach($d in @($templates,$pools,$structures,$sets)){[IO.Directory]::CreateDirectory($d)|Out-Null}
$themes=@(
@{id='barakoa';wood='minecraft:jungle_planks';wall='minecraft:mossy_cobblestone';roof='minecraft:moss_block';floor='minecraft:mossy_cobblestone';accent='minecraft:ochre_froglight';region='estero';villager_type='minecraft:jungle';guard=@{id='minecraft:iron_golem';name='Guardián del Bosque';color='red';tags=@('barakoa_guard','barakoa_npc')};people=@(@('Tata Fawna','minecraft:cleric','gold','barakoa_leader'),@('Guardián del Bosque','minecraft:armorer','red','barakoa_guard'),@('Joven Kael','minecraft:farmer','aqua','barakoa_young'))},
@{id='culto_llama';wood='minecraft:crimson_planks';wall='minecraft:polished_blackstone_bricks';roof='minecraft:red_nether_bricks';floor='minecraft:blackstone';accent='minecraft:magma_block';region='estero';villager_type='minecraft:swamp';guard=@{id='goety:warlock';name='Vigía de la Llama';color='dark_purple';tags=@('cultist_warlock','cultist_npc')};people=@(@('Sombras Veloz','minecraft:cleric','dark_purple','cultist_warlock'),@('Acolito del Fuego','minecraft:weaponsmith','red','cultist_heretic'))},
@{id='agricultores';wood='minecraft:acacia_planks';wall='minecraft:packed_mud';roof='minecraft:hay_block';floor='minecraft:coarse_dirt';accent='minecraft:hay_block';region='tucuman';villager_type='minecraft:savanna';guard=@{id='minecraft:iron_golem';name='Protector de las Chacras';color='green';tags=@('farmer_guard','farmer_npc')};people=@(@('Don Eusebio','minecraft:farmer','green','farmer_leader'),@('Mecha','minecraft:farmer','yellow','farmer_young'),@('Peon de las Chacras','minecraft:toolsmith','dark_green','farmer_worker'))},
@{id='fuego_interior';wood='minecraft:crimson_planks';wall='minecraft:basalt';roof='minecraft:red_nether_bricks';floor='minecraft:polished_blackstone';accent='minecraft:shroomlight';region='tucuman';villager_type='minecraft:savanna';guard=@{id='goety:heretic';name='Centinela de Brasas';color='red';tags=@('fuego_guard','fuego_npc')};people=@(@('Sacerdote Ignes','minecraft:cleric','dark_red','fuego_priest'),@('Guardian de Llamas','minecraft:weaponsmith','red','fuego_guard'))},
@{id='sabios';wood='minecraft:dark_oak_planks';wall='minecraft:stone_bricks';roof='minecraft:deepslate_tiles';floor='minecraft:polished_diorite';accent='minecraft:bookshelf';region='cordoba';villager_type='minecraft:taiga';guard=@{id='goety:storm_caster';name='Custodio del Archivo';color='aqua';tags=@('wizard_elder','wizard_npc')};people=@(@('Maestro Zenon','minecraft:librarian','aqua','wizard_elder'),@('Aprendiz Valeria','minecraft:cartographer','yellow','wizard_apprentice'))},
@{id='sombra';wood='minecraft:dark_oak_planks';wall='minecraft:deepslate_bricks';roof='minecraft:blackstone';floor='minecraft:polished_blackstone';accent='minecraft:crying_obsidian';region='cordoba';villager_type='minecraft:taiga';guard=@{id='goety:warlock';name='Vigía Enmascarado';color='dark_purple';tags=@('sombra_leader','sombra_npc')};people=@(@('El Innombrable','minecraft:cleric','dark_purple','sombra_leader'),@('Mensajero Enmascarado','minecraft:leatherworker','gray','sombra_messenger'))},
@{id='mercaderes';wood='minecraft:spruce_planks';wall='minecraft:bricks';roof='minecraft:cut_copper';floor='minecraft:gravel';accent='minecraft:barrel';region='rosario';villager_type='minecraft:plains';guard=@{id='minecraft:wandering_trader';name='Arriero del Paraná';color='yellow';tags=@('merchant_trader','merchant_npc')};people=@(@('Capitan Duarte','minecraft:librarian','yellow','merchant_captain'),@('Mercader Nunez','minecraft:toolsmith','aqua','merchant_trader'))},
@{id='mortifagos';wood='minecraft:warped_planks';wall='minecraft:dark_prismarine';roof='minecraft:prismarine_bricks';floor='minecraft:stone_bricks';accent='minecraft:soul_lantern';region='rosario';villager_type='minecraft:swamp';guard=@{id='goety:heresiarch';name='Barquero de la Niebla';color='gray';tags=@('mortifago_priest','mortifago_npc')};people=@(@('El Capitan Muerto','minecraft:cleric','gray','mortifago_leader'),@('Sacerdote del Rio','minecraft:weaponsmith','dark_gray','mortifago_priest'))},
@{id='guardia';wood='minecraft:oak_planks';wall='minecraft:stone_bricks';roof='minecraft:quartz_bricks';floor='minecraft:polished_andesite';accent='minecraft:iron_block';region='buenos_aires';villager_type='minecraft:plains';guard=@{id='minecraft:iron_golem';name='Custodio de la Guardia';color='white';tags=@('guardia_sentinel','guardia_npc')};people=@(@('Comandante Vael','minecraft:armorer','white','guardia_commander'),@('Sentinela de Turno','minecraft:weaponsmith','light_purple','guardia_sentinel'))},
@{id='umvuthana';wood='minecraft:jungle_planks';wall='minecraft:mossy_stone_bricks';roof='minecraft:oak_leaves';floor='minecraft:moss_block';accent='minecraft:ochre_froglight';region='misiones';villager_type='minecraft:jungle';guard=@{id='mowziesmobs:umvuthana';name='Guerrero de la Selva';color='green';tags=@('umvuthana_guard','umvuthana_npc')};people=@(@('Jefa Nandi','minecraft:cleric','dark_green','umvuthana_leader'),@('Guerrero Thaba','minecraft:armorer','green','umvuthana_guard'),@('Explorador Sipho','minecraft:cartographer','yellow','umvuthana_young'))}
)
function AddB($x,$y,$z,$id){$script:blocks["$x,$y,$z"]=$id}
function FillB($x1,$y1,$z1,$x2,$y2,$z2,$id){for($y=$y1;$y -le $y2;$y++){for($z=$z1;$z -le $z2;$z++){for($x=$x1;$x -le $x2;$x++){AddB $x $y $z $id}}}}
function BuildHouse($x,$z,$wood,$wall,$roof,$accent){
  FillB $x 0 $z ($x+6) 0 ($z+6) $wood
  FillB $x 1 $z ($x+6) 3 $z $wall; FillB $x 1 ($z+6) ($x+6) 3 ($z+6) $wall
  FillB $x 1 $z $x 3 ($z+6) $wall; FillB ($x+6) 1 $z ($x+6) 3 ($z+6) $wall
  FillB ($x+1) 1 ($z+1) ($x+5) 3 ($z+5) 'minecraft:air'
  FillB ($x+2) 2 $z ($x+4) 2 $z 'minecraft:glass_pane'; FillB ($x+2) 2 ($z+6) ($x+4) 2 ($z+6) 'minecraft:glass_pane'
  AddB ($x+3) 1 $z 'minecraft:air'; AddB ($x+3) 2 $z 'minecraft:air'
  for($xx=$x;$xx -le ($x+6);$xx++){AddB $xx 4 $z $roof;AddB $xx 4 ($z+6) $roof}
  for($zz=$z+1;$zz -le ($z+5);$zz++){AddB $x 4 $zz $roof;AddB ($x+6) 4 $zz $roof}
  FillB ($x+1) 4 ($z+1) ($x+5) 4 ($z+5) $roof
  AddB ($x+1) 5 ($z+1) $accent;AddB ($x+5) 5 ($z+1) $accent;AddB ($x+1) 5 ($z+5) $accent;AddB ($x+5) 5 ($z+5) $accent
  AddB ($x+3) 1 ($z+3) 'minecraft:crafting_table'; AddB ($x+4) 1 ($z+3) 'minecraft:barrel'
}
foreach($t in $themes){
  $script:blocks=@{}
  FillB 0 0 0 32 0 32 $t.floor
  for($i=0;$i -le 32;$i++){foreach($v in @(15,16,17)){AddB $i 0 $v 'minecraft:dirt_path';AddB $v 0 $i 'minecraft:dirt_path'}}
  FillB 13 0 13 19 0 19 'minecraft:polished_andesite'
  AddB 16 1 16 'minecraft:water';AddB 15 1 16 'minecraft:stone_bricks';AddB 17 1 16 'minecraft:stone_bricks';AddB 16 1 15 'minecraft:stone_bricks';AddB 16 1 17 'minecraft:stone_bricks'
  BuildHouse 3 3 $t.wood $t.wall $t.roof $t.accent; BuildHouse 23 3 $t.wood $t.wall $t.roof $t.accent
  BuildHouse 3 23 $t.wood $t.wall $t.roof $t.accent; BuildHouse 23 23 $t.wood $t.wall $t.roof $t.accent
  AddB 4 1 4 'minecraft:lantern';AddB 28 1 4 'minecraft:lantern';AddB 4 1 28 'minecraft:lantern';AddB 28 1 28 'minecraft:lantern'
  $entities=@();$ix=0
  foreach($person in $t.people){$e=[ValttherosEntitySpec]::new();$e.Id='minecraft:villager';$e.Name=$person[0];$e.Color=$person[2];$e.Tags=@('community_'+$t.id,$person[3],$person[3]+'_npc');$e.Profession=$person[1];$e.VillagerType=$t.villager_type;$e.NoAI=$false;$e.X=14+($ix*2);$e.Y=1;$e.Z=14;$entities+=,$e;$ix++}
  $g=$t.guard;$guard=[ValttherosEntitySpec]::new();$guard.Id=$g.id;$guard.Name=$g.name;$guard.Color=$g.color;$guard.Tags=@('community_'+$t.id)+$g.tags;$guard.Profession='';$guard.NoAI=$true;$guard.X=6;$guard.Y=1;$guard.Z=16;$entities+=,$guard
  $blockDict=[Collections.Generic.Dictionary[string,string]]::new();foreach($key in $script:blocks.Keys){$blockDict.Add([string]$key,[string]$script:blocks[$key])};[ValttherosNbt]::Write((Join-Path $templates ($t.id+'.nbt')),33,8,33,$blockDict,$entities)
}
$regions=@(
@{id='estero';ids=@('barakoa','culto_llama');biomes=@('biomesoplenty:bayou','biomesoplenty:marsh','biomesoplenty:wetland','biomesoplenty:muskeg','minecraft:swamp','minecraft:mangrove_swamp')},
@{id='tucuman';ids=@('agricultores','fuego_interior');biomes=@('biomesoplenty:pasture','biomesoplenty:grassland','biomesoplenty:dryland','biomesoplenty:lush_savanna','minecraft:savanna','minecraft:windswept_savanna')},
@{id='cordoba';ids=@('sabios','sombra');biomes=@('biomesoplenty:highland','biomesoplenty:prairie','biomesoplenty:field','biomesoplenty:origin_valley')},
@{id='rosario';ids=@('mercaderes','mortifagos');biomes=@('biomesoplenty:floodplain','minecraft:river')},
@{id='buenos_aires';ids=@('guardia');biomes=@('minecraft:plains','minecraft:sunflower_plains','biomesoplenty:forested_field','biomesoplenty:orchard')},
@{id='misiones';ids=@('umvuthana');biomes=@('biomesoplenty:rainforest','biomesoplenty:rocky_rainforest','biomesoplenty:tropics','biomesoplenty:fungal_jungle','biomesoplenty:undergrowth','minecraft:jungle','minecraft:bamboo_jungle')})
$tagRoot=Join-Path $data 'tags\worldgen\biome\region_biomes';[IO.Directory]::CreateDirectory($tagRoot)|Out-Null;$idx=0
foreach($r in $regions){$name=if($r.id -eq 'estero'){'community_settlements'}else{$r.id+'_settlements'}
  $pool=@{fallback='minecraft:empty';elements=@()};foreach($id in $r.ids){$pool.elements+=,@{weight=1;element=@{element_type='minecraft:single_pool_element';location=('valttheros:settlements/'+$id);processors='minecraft:empty';projection='rigid'}}}
  [IO.File]::WriteAllText((Join-Path $pools ($name+'.json')),($pool|ConvertTo-Json -Depth 20),[Text.UTF8Encoding]::new($false))
  [IO.File]::WriteAllText((Join-Path $tagRoot ($r.id+'.json')),(@{replace=$false;values=$r.biomes}|ConvertTo-Json -Depth 10),[Text.UTF8Encoding]::new($false))
  $structure=@{type='minecraft:jigsaw';biomes=('#valttheros:region_biomes/'+$r.id);step='surface_structures';spawn_overrides=@{};terrain_adaptation='beard_thin';start_pool=('valttheros:'+$name);size=1;start_height=@{absolute=0};project_start_to_heightmap='WORLD_SURFACE_WG';max_distance_from_center=80;use_expansion_hack=$false;liquid_settings='ignore_waterlogging'}
  [IO.File]::WriteAllText((Join-Path $structures ($name+'.json')),($structure|ConvertTo-Json -Depth 20),[Text.UTF8Encoding]::new($false))
  $set=@{structures=@(@{structure=('valttheros:'+$name);weight=1});placement=@{type='minecraft:random_spread';spacing=12;separation=6;salt=(34711982+$idx*701)}}
  [IO.File]::WriteAllText((Join-Path $sets ($name+'.json')),($set|ConvertTo-Json -Depth 20),[Text.UTF8Encoding]::new($false));$idx++
}
Write-Host 'Generated ten inhabitable village templates and six regional pools.'




