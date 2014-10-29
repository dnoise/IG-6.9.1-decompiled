.class final Lcom/instagram/android/fragment/cy;
.super Ljava/lang/Object;
.source "MainFeedFragment.java"

# interfaces
.implements Lcom/instagram/common/d/a;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/cr;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/cr;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/instagram/android/fragment/cy;->a:Lcom/instagram/android/fragment/cr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 211
    iget-object v0, p0, Lcom/instagram/android/fragment/cy;->a:Lcom/instagram/android/fragment/cr;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/cr;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/a/l;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/l;->notifyDataSetChanged()V

    .line 212
    return-void
.end method
