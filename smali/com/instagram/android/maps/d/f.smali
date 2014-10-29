.class final Lcom/instagram/android/maps/d/f;
.super Ljava/lang/Object;
.source "GeoGridFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/maps/d/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/d/a;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/instagram/android/maps/d/f;->a:Lcom/instagram/android/maps/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/instagram/android/maps/d/f;->a:Lcom/instagram/android/maps/d/a;

    invoke-static {v0}, Lcom/instagram/android/maps/d/a;->d(Lcom/instagram/android/maps/d/a;)Z

    .line 193
    iget-object v0, p0, Lcom/instagram/android/maps/d/f;->a:Lcom/instagram/android/maps/d/a;

    invoke-static {v0}, Lcom/instagram/android/maps/d/a;->b(Lcom/instagram/android/maps/d/a;)V

    .line 194
    return-void
.end method
