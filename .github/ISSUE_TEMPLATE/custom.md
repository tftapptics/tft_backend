---
name: Custom issue template
about: Describe this issue template's purpose here.
title: 'TFT Create:'
labels: ''
assignees: ''

---

```
user story goes here
```

##### Request
```http
<!-- example DELETE /api/v1/foods/:id -->
```

##### Successful Response
- [] HTTP Status `204`

##### Failed Response
- [] Has format:
  ```js
  { "error": "<Descriptive Message>" }
  ```

- No food matches provided ID
  - [] HTTP Status `404`
  - [] Descriptive message: "message"
- Catch internal server errors with
  - [] HTTP Status `500`
  - [] Descriptive message: "message"
