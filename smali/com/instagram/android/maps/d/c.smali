.class final Lcom/instagram/android/maps/d/c;
.super Ljava/lang/Object;
.source "GeoGridFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/maps/d/b;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/d/b;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/instagram/android/maps/d/c;->a:Lcom/instagram/android/maps/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/instagram/android/maps/d/c;->a:Lcom/instagram/android/maps/d/b;

    iget-object v0, v0, Lcom/instagram/android/maps/d/b;->a:Lcom/instagram/android/maps/d/a;

    invoke-virtual {v0}, Lcom/instagram/android/maps/d/a;->d()Lcom/instagram/android/maps/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/a/a;->notifyDataSetChanged()V

    .line 72
    iget-object v0, p0, Lcom/instagram/android/maps/d/c;->a:Lcom/instagram/android/maps/d/b;

    iget-object v0, v0, Lcom/instagram/android/maps/d/b;->a:Lcom/instagram/android/maps/d/a;

    invoke-virtual {v0}, Lcom/instagram/android/maps/d/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/a/f;->a(Landroid/app/Activity;)Lcom/instagram/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/a/f;->b()V

    .line 73
    iget-object v0, p0, Lcom/instagram/android/maps/d/c;->a:Lcom/instagram/android/maps/d/b;

    iget-object v0, v0, Lcom/instagram/android/maps/d/b;->a:Lcom/instagram/android/maps/d/a;

    invoke-static {v0}, Lcom/instagram/android/maps/d/a;->a(Lcom/instagram/android/maps/d/a;)V

    .line 74
    return-void
.end method
