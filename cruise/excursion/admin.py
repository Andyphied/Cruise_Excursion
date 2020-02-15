from django.contrib import admin
from .models import Excursion, Language,Typology

theModels = [Excursion, Language, Typology]
admin.site.register(theModels)
