from django.conf.urls import url
from tenant.views import HomeView


urlpatterns = [
    url(r'^$', HomeView.as_view()),
]
