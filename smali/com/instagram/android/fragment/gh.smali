.class final Lcom/instagram/android/fragment/gh;
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
    .line 233
    iput-object p1, p0, Lcom/instagram/android/fragment/gh;->a:Lcom/instagram/android/fragment/fy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 236
    iget-object v0, p0, Lcom/instagram/android/fragment/gh;->a:Lcom/instagram/android/fragment/fy;

    invoke-static {v0}, Lcom/instagram/android/fragment/fy;->e(Lcom/instagram/android/fragment/fy;)Lcom/instagram/android/d/n;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/gh;->a:Lcom/instagram/android/fragment/fy;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/fy;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/d/n;->a(Landroid/content/Context;)V

    .line 237
    return-void
.end method
