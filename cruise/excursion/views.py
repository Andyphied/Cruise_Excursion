from rest_framework import status
from django.shortcuts import get_object_or_404
from rest_framework import viewsets
from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated
from rest_framework_jwt.authentication import JSONWebTokenAuthentication
from .serializers import ExcursionListSerializer, TypologySerializer, LanguageSerializer, ExcursionDetailSerializer
from .models import Excursion, Typology, Language


class ExcursionViewSet(viewsets.ModelViewSet):

    permission_classes = (IsAuthenticated,)
    authentication_class = JSONWebTokenAuthentication
    queryset = Excursion.objects.raw('SELECT * FROM excursion ORDER BY id')
    serializer_class = ExcursionDetailSerializer

    def list(self, request):
        try:
            queryset1 = Excursion.objects.raw('SELECT * FROM excursion ORDER BY id')
            queryset2 = Typology.objects.raw('SELECT * FROM typology ORDER BY id' )
            queryset3 = Language.objects.raw('SELECT * FROM language ORDER BY id')
            excursion_serializer = ExcursionListSerializer(queryset1, many=True)
            typology_serializer = TypologySerializer(queryset2, many=True)
            language_serializer = LanguageSerializer(queryset3, many=True)
            status_code = status.HTTP_200_OK
            response = {
                'success': 'true',
                'status code': status_code,
                'message': 'Excursion List fetched successfully',
                'data': typology_serializer.data + language_serializer.data + excursion_serializer.data

                }


        except Exception as e:
            status_code = status.HTTP_400_BAD_REQUEST
            response = {
                'success': 'false',
                'status code': status.HTTP_400_BAD_REQUEST,
                'message': 'Excursion List does not exists',
                'error': str(e)
                }
        return Response(response, status=status_code)

    def retrieve(self, request, pk=None):
        try:
            queryset1 = Excursion.objects.all()
            single_excu = get_object_or_404(queryset1, pk=pk)
            serializer = ExcursionDetailSerializer(single_excu)
            status_code = status.HTTP_200_OK
            response ={
                'success': 'true',
                'status_code': status_code,
                'message': 'Here is the Detail',
                'data': serializer.data
                }
        except Exception as e:
            status_code = status.HTTP_400_BAD_REQUEST
            response = {
                'success': 'false',
                'status code': status.HTTP_400_BAD_REQUEST,
                'message': 'Excursion List does not exists',
                'error': str(e)
                }
        return Response(response, status=status_code)


    #def update(self, request, pk=none):



        def partial_update(self, request, *args, **kwargs):
            queryset1 = Excursion.objects.all()
            instance = self.queryset1.get(pk=kwargs.get('pk'))
            serializer = self.serilizer_class(intsance, data=request.data, partial=True)
            serializer.is_valid(raise_exception=True)
            serializer.save()
            return Response(serializer.data)
