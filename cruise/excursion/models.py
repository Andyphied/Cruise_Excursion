from django.db import models


class Typology(models.Model):
    number = models.CharField(max_length=4, unique= True)

    def __str__(self):
        return self.number

    class Meta:
        '''
        to set table name in databases
        '''
        db_table = "typology"

class Language(models.Model):
    name = models.CharField(max_length=2, unique= True)

    def __str__(self):
        return self.name

    class Meta:
        '''
        to set table name in databases
        '''
        db_table = "language"


class Excursion(models.Model):

    id = models.CharField(max_length=100, primary_key=True)
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
    minimumAge = models.CharField(max_length=3, blank=True)
    wheelChairAccessible = models.BooleanField(default=False)
    featured = models.BooleanField(default=False)


    def __str__(self):
        return self.name

    class Meta:
        '''
        to set table name in databases
        '''
        db_table = "excursion"
