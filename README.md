# TFT_Backend

Authored by: [Deonte Cooper](https://github.com/djc00p) and [Ethan Grab](https://github.com/Stoovels)


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
      "name":  "Alkali"
      "cost" 4
      "hp": [650, 750, 850]
      "dps": [42, 52, 62]
      "atk_spd": .65
      "dmg": [65, 75, 85]
      "range": 1
      "armor": 25
      "mr": 20
      "origin_id": [4]
      "class_id": [3]
      "img_thumbnail": "thumbnail.com"
      "img_model": "imgmodel.com"
    },
    {
      "id": 1,
      "name":  "Alkali"
      "cost" 4
      "hp": [650, 750, 850]
      "dps": [42, 52, 62]
      "atk_spd": .65
      "dmg": [65, 75, 85]
      "range": 1
      "armor": 25
      "mr": 20
      "origin_id": [4]
      "class_id": [3]
      "img_thumbnail": "thumbnail.com"
      "img_model": "imgmodel.com"
    },
    {
      "id": 1,
      "name":  "Alkali"
      "cost" 4
      "hp": [650, 750, 850]
      "dps": [42, 52, 62]
      "atk_spd": .65
      "dmg": [65, 75, 85]
      "range": 1
      "armor": 25
      "mr": 20
      "origin_id": [4]
      "class_id": [3]
      "img_thumbnail": "thumbnail.com"
      "img_model": "imgmodel.com"
    },
    {
      "id": 1,
      "name":  "Alkali"
      "cost" 4
      "hp": [650, 750, 850]
      "dps": [42, 52, 62]
      "atk_spd": .65
      "dmg": [65, 75, 85]
      "range": 1
      "armor": 25
      "mr": 20
      "origin_id": [4]
      "class_id": [3]
      "img_thumbnail": "thumbnail.com"
      "img_model": "imgmodel.com"
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
