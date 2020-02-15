from rest_framework import routers
from .views import ExcursionViewSet




router = routers.DefaultRouter()
router.register(r'excursion', ExcursionViewSet)

urlpatterns = router.urls
