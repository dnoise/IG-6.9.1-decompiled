.class final Lcom/instagram/android/fragment/bq;
.super Ljava/lang/Object;
.source "FindFriendsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/bp;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/bp;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/instagram/android/fragment/bq;->a:Lcom/instagram/android/fragment/bp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 49
    new-instance v0, Lcom/instagram/android/widget/a;

    iget-object v1, p0, Lcom/instagram/android/fragment/bq;->a:Lcom/instagram/android/fragment/bp;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/bp;->n()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/fragment/bq;->a:Lcom/instagram/android/fragment/bp;

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/widget/a;-><init>(Landroid/content/Context;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v0}, Lcom/instagram/android/widget/a;->b()V

    .line 53
    return-void
.end method
