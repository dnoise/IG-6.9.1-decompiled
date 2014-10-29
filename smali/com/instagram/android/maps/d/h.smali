.class final Lcom/instagram/android/maps/d/h;
.super Ljava/lang/Object;
.source "GeoGridFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/maps/d/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/d/a;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/instagram/android/maps/d/h;->a:Lcom/instagram/android/maps/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 212
    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/d/h;->a:Lcom/instagram/android/maps/d/a;

    invoke-static {v1}, Lcom/instagram/android/maps/d/a;->e(Lcom/instagram/android/maps/d/a;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/e/a;->a(Ljava/util/Collection;)V

    .line 213
    iget-object v0, p0, Lcom/instagram/android/maps/d/h;->a:Lcom/instagram/android/maps/d/a;

    invoke-virtual {v0}, Lcom/instagram/android/maps/d/a;->d()Lcom/instagram/android/maps/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/a/a;->notifyDataSetChanged()V

    .line 214
    return-void
.end method
