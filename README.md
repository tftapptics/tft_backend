# TFTapptics Backend
This project allows anyone to build a team and make decisions based on the out look of that teams stats.

### [TFTapptics Frontend](https://github.com/tftapptics/tft_tapptics)

Authored by: [Deonte Cooper](https://github.com/djc00p),  [Ethan Grab](https://github.com/Stoovels),
[Raechel Odom](https://github.com/raechelo), and [Duy Vu](https://github.com/Rosebud303)

## Setup

```
$ git clone git@github.com:tftapptics/tft_backend.git
$ bundle install
$ rails db:{drop,create,migrate,seed}
$ bundle exec rspec
```

<details><summary>Ruby Version 2.6.3 Setup</summary>

Check Version is up to date with version `2.6.3` by running `$ rbenv versions`

```
$ rbenv versions
	=> system
		 2.1.5
		 2.3.1
		 2.3.3
		 2.4.1
		* 2.6.0 (set by /Users/user/turing/4_module/projects/tft_backend/.ruby-version)
```
If you don't have updated version `2.6.3` run `$  brew update && brew upgrade ruby-build`

Then you can run `$ rbenv install 2.6.3`

Now when you check your versions with you should see `2.6.3` as an option.

```
$ rbenv versions
	=>  system
		  2.1.5
		  2.3.1
		  2.3.3
		  2.4.1
		* 2.6.0 (set by /Users/djc00p/turing/4_module/projects/tft_backend/.ruby-version)
		  2.6.3
```

Looks like its available now just run `$ rbenv local 2.6.3`

Now everything should be setup and you should see an updated version.

```
$ rbenv versions
	=>  system
			2.1.5
			2.3.1
			2.3.3
			2.4.1
			2.6.0
		* 2.6.3 (set by /Users/djc00p/turing/4_module/projects/tft_backend/.ruby-version)
```

`$ rbenv local` will also return `2.6.3`

</details>


## Champions

### Champions Index

Returns all champions currently in the database

#### Request

```http
GET /api/v1/champions
```

#### Successful Response

```http
HTTP/1.1 200 OK
```

##### Body
<details><summary>Example Body</summary>

```json
{
    "data": [
        {
            "id": "1",
            "type": "champions",
            "attributes": {
                "data": {
                    "id": 1,
                    "name": "Aatrox, the Darkin Blade",
                    "champion_thumbnail": "https://ddragon.leagueoflegends.com/cdn/9.13.1/img/champion/Aatrox.png",
                    "cost": 3,
                    "health": [
                        650,
                        1170,
                        2340
                    ],
                    "dmg": 65,
                    "armor": 25,
                    "mr": 20,
                    "atk_spd": 0.65,
                    "range": "■□□□",
                    "ability_thumbnail": "https://raw.communitydragon.org/latest/game/assets/characters/aatrox/hud/icons2d/aatrox_q3.png",
                    "ability_info": {
                        "title": "The Darkin Blade",
                        "attributes": [
                            {
                                "damage": [
                                    300,
                                    500,
                                    700
                                ]
                            }
                        ],
                        "descrption": "Aatrox cleaves the area in front of him, dealing damage to enemies inside it"
                    },
                    "model_img": null,
                    "created_at": "2019-07-18T20:59:30.289Z",
                    "updated_at": "2019-07-18T20:59:30.289Z"
                },
                "origin_class_type": {
                    "data": [
                        {
                            "id": "2",
                            "type": "origin_class_type",
                            "attributes": {
                                "data": {
                                    "id": 2,
                                    "name": "Blademaster",
                                    "thumbnail": "https://img.rankedboost.com/wp-content/plugins/league/assets/tft/Blademaster.png",
                                    "summary": "Blademasters have a chance to strike additional times each attack.",
                                    "tier_info": [
                                        " (2)  Blademasters 35% chance to strike 1 additional attack",
                                        " (4)  Blademasters 35% chance to strike 2 additional"
                                    ],
                                    "tiers": [
                                        2,
                                        4
                                    ],
                                    "created_at": "2019-07-18T20:59:30.224Z",
                                    "updated_at": "2019-07-18T20:59:30.224Z"
                                }
                            }
                        },
                        {
                            "id": "11",
                            "type": "origin_class_type",
                            "attributes": {
                                "data": {
                                    "id": 11,
                                    "name": "Demon",
                                    "thumbnail": "https://img.rankedboost.com/wp-content/plugins/league/assets/tft/Demon.png",
                                    "summary": "Attacks from Demons have a chance on hit to burn all of an enemy's mana and deal that much as true damage.",
                                    "tier_info": [
                                        " (2)  Demons have a 40% Chance on Hit to Mana Burn",
                                        " (4)  Demons have a 60% Chance on Hit to Mana Burn",
                                        " (6)  Demons have a 80% Chance on Hit to Mana Burn"
                                    ],
                                    "tiers": [
                                        2,
                                        4,
                                        6
                                    ],
                                    "created_at": "2019-07-18T20:59:30.244Z",
                                    "updated_at": "2019-07-18T20:59:30.244Z"
                                }
                            }
                        }
                    ]
                }
            }
        },
        {
            "id": "2",
            "type": "champions",
            "attributes": {
                "data": {
                    "id": 2,
                    "name": "Ahri, the Nine-Tailed Fox",
                    "champion_thumbnail": "https://ddragon.leagueoflegends.com/cdn/9.13.1/img/champion/Ahri.png",
                    "cost": 2,
                    "health": [
                        450,
                        810,
                        1620
                    ],
                    "dmg": 50,
                    "armor": 20,
                    "mr": 20,
                    "atk_spd": 0.55,
                    "range": "■■■□",
                    "ability_thumbnail": "https://raw.communitydragon.org/latest/game/assets/characters/ahri/hud/icons2d/ahri_orbofdeception.png",
                    "ability_info": {
                        "title": "Orb of Deception",
                        "attributes": [
                            {
                                "damage": [
                                    100,
                                    175,
                                    250
                                ]
                            }
                        ],
                        "descrption": "Ahri fires an orb in a line that returns to her, damaging enemies it passes through"
                    },
                    "model_img": null,
                    "created_at": "2019-07-18T20:59:30.315Z",
                    "updated_at": "2019-07-18T20:59:30.315Z"
                },
                "origin_class_type": {
                    "data": [
                        {
                            "id": "10",
                            "type": "origin_class_type",
                            "attributes": {
                                "data": {
                                    "id": 10,
                                    "name": "Sorcerer",
                                    "thumbnail": "https://img.rankedboost.com/wp-content/plugins/league/assets/tft/Sorcerer.png",
                                    "summary": "Sorcerers gain double mana from attacking. Allies have bonus spell damage.",
                                    "tier_info": [
                                        " (3)  Sorcerers gain double mana from attacking. +35% Spell Damage",
                                        " (6)  Sorcerers gain double mana from attacking. +100% Spell Damage"
                                    ],
                                    "tiers": [
                                        3,
                                        6
                                    ],
                                    "created_at": "2019-07-18T20:59:30.242Z",
                                    "updated_at": "2019-07-18T20:59:30.242Z"
                                }
                            }
                        },
                        {
                            "id": "21",
                            "type": "origin_class_type",
                            "attributes": {
                                "data": {
                                    "id": 21,
                                    "name": "Wild",
                                    "thumbnail": "https://img.rankedboost.com/wp-content/plugins/league/assets/tft/Wild.png",
                                    "summary": "Attacks generate stacks of Fury (stacks up to 5 times) with every attack. Each stack of Fury gives 7% Attack Speed.",
                                    "tier_info": [
                                        " (2)  Wild allies only gain 7% Attack Speed (stacks up to 5 times)",
                                        " (4)  All allies gain 7% Attack Speed (stacks up to 5 times)"
                                    ],
                                    "tiers": [
                                        2,
                                        4
                                    ],
                                    "created_at": "2019-07-18T20:59:30.267Z",
                                    "updated_at": "2019-07-18T20:59:30.267Z"
                                }
                            }
                        }
                    ]
                }
            }
        }
		]
}
```

</details>

<details><summary>Failed Responses</summary>

#### Other

```http
HTTP/1.1 500 Internal Server Error
```

##### Body

```js
{"error": "Internal Server Error"}
```

</details>

---

### Champion Show

Returns a champion along with their origin_class_type information.

#### Request

```http
GET /api/v1/champions/:id
```

#### Successful Response

```http
HTTP/1.1 200 OK
```

##### Body
<details><summary>Example Body</summary>

```json
{
    "data": {
        "id": "42",
        "type": "champions",
        "attributes": {
            "data": {
                "id": 42,
                "name": "Swain, the Noxian Grand General",
                "champion_thumbnail": "https://ddragon.leagueoflegends.com/cdn/9.13.1/img/champion/Swain.png",
                "cost": 5,
                "health": [
                    850,
                    1530,
                    3060
                ],
                "dmg": 65,
                "armor": 25,
                "mr": 20,
                "atk_spd": 0.65,
                "range": "■■□□",
                "ability_thumbnail": "https://raw.communitydragon.org/latest/game/assets/characters/swain/hud/icons2d/swain_r.png",
                "ability_info": {
                    "title": "Demonflare",
                    "attributes": [
                        {
                            "healpertick": [
                                50,
                                90,
                                130
                            ],
                            "damagepertick": [
                                50,
                                100,
                                150
                            ],
                            "soulflaredamage": [
                                300,
                                600,
                                900
                            ],
                            "transformduration": 6
                        }
                    ],
                    "descrption": "Swain transforms, draining health from all nearby enemies. At the end of his transformation, Swain sends out a burst of energy dealing damage to nearby enemies"
                },
                "model_img": null,
                "created_at": "2019-07-18T20:59:30.796Z",
                "updated_at": "2019-07-18T20:59:30.796Z"
            },
            "origin_class_type": {
                "data": [
                    {
                        "id": "9",
                        "type": "origin_class_type",
                        "attributes": {
                            "data": {
                                "id": 9,
                                "name": "Shapeshifter",
                                "thumbnail": "https://img.rankedboost.com/wp-content/plugins/league/assets/tft/Shapeshifter.png",
                                "summary": "Shapeshifters gain bonus maximum Health when they transform.",
                                "tier_info": [
                                    " (3)  Shapeshifters gain 100% Bonus Maximum Health"
                                ],
                                "tiers": [
                                    3
                                ],
                                "created_at": "2019-07-18T20:59:30.240Z",
                                "updated_at": "2019-07-18T20:59:30.240Z"
                            }
                        }
                    },
                    {
                        "id": "11",
                        "type": "origin_class_type",
                        "attributes": {
                            "data": {
                                "id": 11,
                                "name": "Demon",
                                "thumbnail": "https://img.rankedboost.com/wp-content/plugins/league/assets/tft/Demon.png",
                                "summary": "Attacks from Demons have a chance on hit to burn all of an enemy's mana and deal that much as true damage.",
                                "tier_info": [
                                    " (2)  Demons have a 40% Chance on Hit to Mana Burn",
                                    " (4)  Demons have a 60% Chance on Hit to Mana Burn",
                                    " (6)  Demons have a 80% Chance on Hit to Mana Burn"
                                ],
                                "tiers": [
                                    2,
                                    4,
                                    6
                                ],
                                "created_at": "2019-07-18T20:59:30.244Z",
                                "updated_at": "2019-07-18T20:59:30.244Z"
                            }
                        }
                    },
                    {
                        "id": "16",
                        "type": "origin_class_type",
                        "attributes": {
                            "data": {
                                "id": 16,
                                "name": "Imperial",
                                "thumbnail": "https://img.rankedboost.com/wp-content/plugins/league/assets/tft/Imperial.png",
                                "summary": "Imperials deal double damage.",
                                "tier_info": [
                                    " (2)  1 Random Imperial deals double damage",
                                    " (4)  All Imperials deal double damage"
                                ],
                                "tiers": [
                                    2,
                                    4
                                ],
                                "created_at": "2019-07-18T20:59:30.257Z",
                                "updated_at": "2019-07-18T20:59:30.257Z"
                            }
                        }
                    }
                ]
            }
        }
    }
}
```

</details>

<details><summary>Failed Responses</summary>

#### Other

```http
HTTP/1.1 500 Internal Server Error
```

##### Body

```js
{"error": "Internal Server Error"}
```

</details>

---

## Schema

![image](https://user-images.githubusercontent.com/45864171/61407946-258ef080-a89c-11e9-89be-b7079780506a.png)

---
