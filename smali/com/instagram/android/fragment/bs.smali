.class final Lcom/instagram/android/fragment/bs;
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
    .line 70
    iput-object p1, p0, Lcom/instagram/android/fragment/bs;->a:Lcom/instagram/android/fragment/bp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 73
    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/facebook/b/b;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/instagram/android/fragment/bs;->a:Lcom/instagram/android/fragment/bp;

    invoke-virtual {v0}, Lcom/facebook/b/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/instagram/android/fragment/bp;->b(Lcom/instagram/android/fragment/bp;Ljava/lang/String;)V

    .line 84
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/instagram/android/fragment/bs;->a:Lcom/instagram/android/fragment/bp;

    sget-object v2, Lcom/instagram/share/b/g;->a:[Ljava/lang/String;

    iget-object v3, p0, Lcom/instagram/android/fragment/bs;->a:Lcom/instagram/android/fragment/bp;

    invoke-static {v3}, Lcom/instagram/android/fragment/bp;->a(Lcom/instagram/android/fragment/bp;)Lcom/instagram/android/fragment/bw;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/b/b;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lcom/facebook/b/e;)V

    goto :goto_0
.end method
