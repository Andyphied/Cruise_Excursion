from django.db import models


class Typology(models.Model):
    number = models.SmallIntegerField(unique= True)

    class Meta:
        '''
        to set table name in databases
        '''
        db_table = "typology"

class Language(models.Model):
    name = models.CharField(max_length=2)

    class Meta:
        '''
        to set table name in databases
        '''
        db_table = "language"


class Excursion(models.Model):

    id = models.BigIntegerField(primary_key= True)
    name = models.CharField(max_length=100)
    detailPageName = models.CharField(max_length=100)
    typology = models.ManyToManyField(Typology)
    portID = models.CharField(max_length=3)
    type = models.CharField(max_length=10)
    activityLevel = models.CharField(max_length=100)
    collectionType = models.CharField(max_length=100)
    duration = models.CharField(max_length=100)
    language = models.ManyToManyField(Language)
    priceLevel = models.PositiveSmallIntegerField()
    currency = models.CharField(max_length=3)
    mealInfo = models.CharField(max_length=100,blank=True)
    status = models.CharField(max_length=100)
    shortDescription = models.CharField(max_length=100,blank=True)
    longDescription = models.TextField(blank=True)
    externalContent = models.BooleanField(default=False)
    minimumAge = models.PositiveSmallIntegerField(blank=True)
    wheelChairAccessible = models.BooleanField(default=False)
    featured = models.BooleanField(default=False)

    @classmethod
    def create(cls, **kwargs):
        excursion = cls.objects.create(
            id = kwargs['id'],
            name = kwargs['name'],
            detailPageName = kwargs['detailPageName'],
            portID = kwargs['portID'],
            type = kwargs['type'],
            activityLevel = kwargs['activityLevel'],
            collectionType = kwargs['collectionType'],
            duration = kwargs['duration'],
            priceLevel = kwargs['priceLevel'],
            currency = kwargs['currency'],
            mealInfo = kwargs['mealInfo'],
            status = kwargs['status'],
            shortDescription = kwargs['shortDescription'],
            longDescription = kwargs['longDescription'],
            externalContent = kwargs['externalContent'],
            minimumAge = kwargs['minimumAge'],
            wheelChairAccessible = kwargs['wheelChairAccessible'],
            featured = kwargs['featured'],
        )

        for typology_number in kwargs['typology']:
            typology, created = Typology.objects.get_or_create(name=typology_number)
            excursion.typology.add(typology)

        for language_name in kwargs['language']:
            language, created = Language.objects.get_or_create(name=language_name)
            excursion.language.add(language)

        return excursion

    class Meta:
        '''
        to set table name in databases
        '''
        db_table = "excursion"
