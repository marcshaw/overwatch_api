# README

A code challenge for Dojo Madness.

Time given: 90 Minutes.
Task:

Code Challenge
Create an API that provides information about Overwatch heroes and their abilities according to the JSONAPI (http://jsonapi.org) spec. Task should be implemented in 90 minutes using ruby language but you are free to choose any open source library which helps to accomplish it.

Your API should have the following endpoints:

- /api/heros - hero list
- /api/heros/{hero_id} - hero data
- /api/heros/{hero_id}/abilities - hero ability list
- /api/abilities/ - ability list
- /api/abilities/{ability_id} - ability data

Hereos data source
https://overwatch-api.net/api/v1/hero/ https://overwatch-api.net/api/v1/hero/{hero_id}

Fields required:
- id
- name
- real_name
- health
- armour
- shield
Hero abilities data source
https://overwatch-api.net/api/v1/ability/ https://overwatch-api.net/api/v1/ability/{ability_id}

ability fields:
- id
- name
- description
- is_ultimate
