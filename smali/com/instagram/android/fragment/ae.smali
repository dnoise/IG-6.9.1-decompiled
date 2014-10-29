.class final Lcom/instagram/android/fragment/ae;
.super Ljava/lang/Object;
.source "EditProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/ac;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/ac;)V
    .locals 0
    .parameter

    .prologue
    .line 591
    iput-object p1, p0, Lcom/instagram/android/fragment/ae;->a:Lcom/instagram/android/fragment/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 594
    iget-object v0, p0, Lcom/instagram/android/fragment/ae;->a:Lcom/instagram/android/fragment/ac;

    invoke-static {v0}, Lcom/instagram/android/fragment/ac;->f(Lcom/instagram/android/fragment/ac;)Lcom/instagram/android/g/b/c;

    move-result-object v0

    if-nez v0, :cond_1

    .line 595
    iget-object v0, p0, Lcom/instagram/android/fragment/ae;->a:Lcom/instagram/android/fragment/ac;

    invoke-static {v0}, Lcom/instagram/android/fragment/ac;->n(Lcom/instagram/android/fragment/ac;)V

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 596
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/fragment/ae;->a:Lcom/instagram/android/fragment/ac;

    invoke-static {v0}, Lcom/instagram/android/fragment/ac;->o(Lcom/instagram/android/fragment/ac;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/instagram/android/fragment/ae;->a:Lcom/instagram/android/fragment/ac;

    invoke-static {v0}, Lcom/instagram/android/fragment/ac;->p(Lcom/instagram/android/fragment/ac;)V

    goto :goto_0
.end method
