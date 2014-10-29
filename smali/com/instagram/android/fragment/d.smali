.class final Lcom/instagram/android/fragment/d;
.super Ljava/lang/Object;
.source "AbstractFeedFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/c;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/c;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/instagram/android/fragment/d;->a:Lcom/instagram/android/fragment/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/instagram/android/fragment/d;->a:Lcom/instagram/android/fragment/c;

    iget-object v0, v0, Lcom/instagram/android/fragment/c;->a:Lcom/instagram/android/fragment/a;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->E()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/instagram/android/fragment/d;->a:Lcom/instagram/android/fragment/c;

    iget-object v0, v0, Lcom/instagram/android/fragment/c;->a:Lcom/instagram/android/fragment/a;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->s_()V

    .line 164
    :cond_0
    return-void
.end method
