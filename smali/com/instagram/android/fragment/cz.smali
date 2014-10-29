.class final Lcom/instagram/android/fragment/cz;
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
    .line 202
    iput-object p1, p0, Lcom/instagram/android/fragment/cz;->a:Lcom/instagram/android/fragment/cr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 205
    iget-object v0, p0, Lcom/instagram/android/fragment/cz;->a:Lcom/instagram/android/fragment/cr;

    invoke-static {v0}, Lcom/instagram/android/fragment/cr;->a(Lcom/instagram/android/fragment/cr;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/directshare/f/c;->a(Landroid/view/View;)V

    .line 206
    return-void
.end method
