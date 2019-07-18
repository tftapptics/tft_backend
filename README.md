# TFT_Backend

Authored by: [Deonte Cooper](https://github.com/djc00p) and [Ethan Grab](https://github.com/Stoovels)

### Schema

![image](https://user-images.githubusercontent.com/45864171/61407946-258ef080-a89c-11e9-89be-b7079780506a.png)

### Champions

#### Champions Index

Returns all champions currently in the database

##### Request

```http
GET /api/v1/champions
```

##### Successful Response

```http
HTTP/1.1 200 OK
```

###### Body
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

##### Other

```http
HTTP/1.1 500 Internal Server Error
```

###### Body

```js
{"error": "Internal Server Error"}
```

</details>

---
