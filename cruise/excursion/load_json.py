#Run file to load json into model
import json
from .models import Excursion

with open('data.json', encoding='utf-8') as data_file:
    json_data = json.loads(data_file.read())

    for excursion_data in json_data:
        excursion = Excursion.create(**movie_data)
