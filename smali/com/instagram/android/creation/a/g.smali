.class final Lcom/instagram/android/creation/a/g;
.super Ljava/lang/Object;
.source "DirectShareFragment.java"

# interfaces
.implements Lcom/instagram/android/directshare/widget/d;


# instance fields
.field final synthetic a:Lcom/instagram/android/creation/a/d;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/a/d;)V
    .locals 0
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Lcom/instagram/android/creation/a/g;->a:Lcom/instagram/android/creation/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 350
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/b/a/f;

    .line 351
    iget-object v1, p0, Lcom/instagram/android/creation/a/g;->a:Lcom/instagram/android/creation/a/d;

    invoke-static {v1}, Lcom/instagram/android/creation/a/d;->i(Lcom/instagram/android/creation/a/d;)Lcom/instagram/creation/b/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->N()Lcom/instagram/creation/b/a/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/creation/b/a/g;->b(Lcom/instagram/creation/b/a/f;)V

    .line 352
    return-void
.end method
