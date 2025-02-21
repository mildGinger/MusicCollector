from django.urls import path

from . import views

urlpatterns = [
    path("", views.index, name="index"),
    path('artists/', views.artist, name='artist'),
    path('artists/<int:id>/', views.artist_detail, name='artist_detail'),
    path('artists/add/', views.add_artist, name='add_artist'),
    path('artists/update/<int:pk>/', views.update_artist, name='update_artist'),
    path('artists/delete/<int:pk>/', views.delete_artist, name='delete_artist'),
    path('albums/', views.album, name='album'),
    path('albums/<int:id>/', views.album_detail, name='album_detail'),
    path('albums/add/', views.add_album, name='add_album'),
    path('albums/update/<int:pk>/', views.update_album, name='update_album'),
    path('albums/delete/<int:pk>/', views.delete_album, name='delete_album'),
]

# urlpatterns = [
    # path('artists/', views.artist_list, name='artist_list'),
    # path('artists/add/', views.add_artist, name='add_artist'),
    # path('artists/update/<int:pk>/', views.update_artist, name='update_artist'),
    # path('artists/delete/<int:pk>/', views.delete_artist, name='delete_artist'),
    # path('albums/', views.album_list, name='album_list'),
    # path('albums/add/', views.add_album, name='add_album'),
    # path('albums/update/<int:pk>/', views.update_album, name='update_album'),
    # path('albums/delete/<int:pk>/', views.delete_album, name='delete_album'),
# ]