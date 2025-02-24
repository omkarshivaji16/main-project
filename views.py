from django.shortcuts import render
from django.contrib import admin
from django.urls import path, include
from django.shortcuts import redirect

def home(request):
    return redirect('auction_list')  # Redirect to auction list page


urlpatterns = [
    path('admin/', admin.site.urls),
    path('', home, name='home'),  # Add this line to handle the root URL
    path('auction/', include('auction.urls')),
]

def auction_list(request):
    return render(request, 'auction/auction_list.html')