from django.contrib import admin
from .views import auction_list
from django.shortcuts import redirect
from django.urls import path, include

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', lambda request: home(request), name='home'),  # ✅ Inline import
    path('auction/', include('auction.urls')),
]

def home(request):
    return redirect('auction_list')  # Redirect to the auction list

urlpatterns = [path('', auction_list, name='auction_list')]