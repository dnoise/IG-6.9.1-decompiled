.class public final Lcom/instagram/android/maps/ae;
.super Ljava/lang/Object;
.source "PhotoMapsActivity.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/maps/PhotoMapsActivity;

.field private final b:I

.field private final c:I

.field private final d:Lcom/google/android/maps/GeoPoint;

.field private final e:I


# direct methods
.method public constructor <init>(Lcom/instagram/android/maps/PhotoMapsActivity;IILcom/google/android/maps/GeoPoint;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1017
    iput-object p1, p0, Lcom/instagram/android/maps/ae;->a:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1018
    iput p2, p0, Lcom/instagram/android/maps/ae;->b:I

    .line 1019
    iput p3, p0, Lcom/instagram/android/maps/ae;->c:I

    .line 1020
    iput-object p4, p0, Lcom/instagram/android/maps/ae;->d:Lcom/google/android/maps/GeoPoint;

    .line 1021
    iput p5, p0, Lcom/instagram/android/maps/ae;->e:I

    .line 1022
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 1008
    iget v0, p0, Lcom/instagram/android/maps/ae;->e:I

    return v0
.end method
