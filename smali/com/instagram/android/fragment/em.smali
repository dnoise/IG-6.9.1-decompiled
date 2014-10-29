.class final Lcom/instagram/android/fragment/em;
.super Ljava/lang/Object;
.source "SelfFragment.java"

# interfaces
.implements Lcom/instagram/common/d/a;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/el;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/el;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/instagram/android/fragment/em;->a:Lcom/instagram/android/fragment/el;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/instagram/android/fragment/em;->a:Lcom/instagram/android/fragment/el;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/el;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/a/n;

    const-string v1, "NewsfeedStore.EXTRA_BROADCAST_NEW_PHOTOS_OF_YOU_COUNT"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/n;->i(I)V

    .line 43
    return-void
.end method
