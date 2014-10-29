.class final Lcom/instagram/android/fragment/gq;
.super Ljava/lang/Object;
.source "UserOptionsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/fy;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/fy;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/instagram/android/fragment/gq;->a:Lcom/instagram/android/fragment/fy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/instagram/android/fragment/gq;->a:Lcom/instagram/android/fragment/fy;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/fy;->l()Landroid/support/v4/app/k;

    move-result-object v0

    const-string v1, "/push/preferences/"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/instagram/api/h/d;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/fragment/gq;->a:Lcom/instagram/android/fragment/fy;

    sget v3, Lcom/facebook/az;->notifications:I

    invoke-virtual {v2, v3}, Lcom/instagram/android/fragment/fy;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/instagram/simplewebview/SimpleWebViewActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method
