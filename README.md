# TFT_Backend

Authored by: [Deonte Cooper](https://github.com/djc00p) and [Ethan Grab](https://github.com/Stoovels)

### Schema

![image](https://user-images.githubusercontent.com/45864171/61312237-3ca6e300-a7b5-11e9-996b-c88b1532ae9f.png)

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
```json
{
	"champions":  [
		{
      "id": 1,
			"name": "Anivia, the Cryophoenix",
			"champion_thumbnail": "https://ddragon.leagueoflegends.com/cdn/9.13.1/img/champion/Anivia.png",
			"cost": "5",
			"health": "650/1170/2340",
			"dmg": "40",
			"armor": "20",
			"mr": "20",
			"atk_spd": "0.60",
			"range": "■■■□",
			"ability_name": "Glacial Storm",
			"ability_thumbnail": "https://raw.communitydragon.org/latest/game/assets/characters/anivia/hud/icons2d/anivia_r.png",
			"ability_damage": "Damage:",
			"ability_description": "Anivia channels a large hailstorm, damaging and slowing the attack speed of enemies inside of it",
			"class_origin_names": [
				"Elementalist",
				"Glacial"
			]
    }
	]
}
```

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
