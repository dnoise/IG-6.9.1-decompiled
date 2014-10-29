.class final Lcom/instagram/android/fragment/db;
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
    .line 182
    iput-object p1, p0, Lcom/instagram/android/fragment/db;->a:Lcom/instagram/android/fragment/cr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 188
    iget-object v0, p0, Lcom/instagram/android/fragment/db;->a:Lcom/instagram/android/fragment/cr;

    const-string v1, "com.instagram.android.activity.ARGUMENT_REFRESH_FORCE_LOAD"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/instagram/android/fragment/cr;->a(Lcom/instagram/android/fragment/cr;Z)V

    .line 189
    return-void
.end method
