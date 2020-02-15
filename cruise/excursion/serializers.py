from rest_framework import serializers
from .models import Excursion, Language, Typology


class ExcursionListSerializer(serializers.ModelSerializer):

    class Meta:
        model = Excursion
        fields = ('id',
                'name',
                'typology',
                'type',
                'collectionType',
                'duration',
                'language',
                'priceLevel',
                'currency'
                )


class ExcursionDetailSerializer(serializers.ModelSerializer):

    class Meta:
        model = Excursion
        fields = (
                  "id",
                  "name",
                  "detailPageName",
                  "portID",
                  "type",
                  "activityLevel",
                  "collectionType",
                  "duration",
                  "priceLevel",
                  "currency",
                  "mealInfo",
                  "status",
                  "shortDescription",
                  "longDescription",
                  "externalContent",
                  "minimumAge",
                  "wheelChairAccessible",
                  "featured",
                  "typology",
                  "language"
                )



class TypologySerializer(serializers.ModelSerializer):


    class Meta:
        model = Typology
        fields = ('id', 'number')


class LanguageSerializer(serializers.ModelSerializer):


    class Meta:
        model = Language
        fields = ('id', 'name')
