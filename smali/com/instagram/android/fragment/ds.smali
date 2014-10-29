.class final Lcom/instagram/android/fragment/ds;
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
    .line 203
    iput-object p1, p0, Lcom/instagram/android/fragment/ds;->a:Lcom/instagram/android/fragment/dn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 208
    invoke-static {}, Lcom/instagram/b/c/a;->a()Lcom/instagram/b/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/ds;->a:Lcom/instagram/android/fragment/dn;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/dn;->l()Landroid/support/v4/app/k;

    move-result-object v1

    const-string v2, "next"

    invoke-virtual {v0, v1, v2}, Lcom/instagram/b/c/a;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/instagram/android/fragment/ds;->a:Lcom/instagram/android/fragment/dn;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/dn;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/nux/af;->a(Landroid/app/Activity;)V

    .line 210
    return-void
.end method
