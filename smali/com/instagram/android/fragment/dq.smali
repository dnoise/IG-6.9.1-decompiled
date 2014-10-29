.class final Lcom/instagram/android/fragment/dq;
.super Ljava/lang/Object;
.source "RecommendedUserFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/dn;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/dn;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/instagram/android/fragment/dq;->a:Lcom/instagram/android/fragment/dn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lcom/instagram/android/fragment/dq;->a:Lcom/instagram/android/fragment/dn;

    invoke-static {v0}, Lcom/instagram/android/fragment/dn;->c(Lcom/instagram/android/fragment/dn;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/instagram/android/fragment/dq;->a:Lcom/instagram/android/fragment/dn;

    invoke-static {v0}, Lcom/instagram/android/fragment/dn;->d(Lcom/instagram/android/fragment/dn;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/instagram/android/fragment/dq;->a:Lcom/instagram/android/fragment/dn;

    invoke-static {v0}, Lcom/instagram/android/fragment/dn;->e(Lcom/instagram/android/fragment/dn;)V

    .line 191
    :cond_0
    return-void
.end method
