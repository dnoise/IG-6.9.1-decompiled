.class final Lcom/instagram/android/maps/d/q;
.super Ljava/lang/Object;
.source "ReviewPhotoMapFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/maps/d/p;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/d/p;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/instagram/android/maps/d/q;->a:Lcom/instagram/android/maps/d/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/instagram/android/maps/d/q;->a:Lcom/instagram/android/maps/d/p;

    iget-object v0, v0, Lcom/instagram/android/maps/d/p;->a:Lcom/instagram/android/maps/d/l;

    invoke-static {v0}, Lcom/instagram/android/maps/d/l;->d(Lcom/instagram/android/maps/d/l;)V

    .line 96
    return-void
.end method
