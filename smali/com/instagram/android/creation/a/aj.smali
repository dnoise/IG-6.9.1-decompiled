.class final Lcom/instagram/android/creation/a/aj;
.super Ljava/lang/Object;
.source "MetadataFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/creation/a/ah;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/a/ah;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/instagram/android/creation/a/aj;->a:Lcom/instagram/android/creation/a/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 172
    iget-object v0, p0, Lcom/instagram/android/creation/a/aj;->a:Lcom/instagram/android/creation/a/ah;

    invoke-virtual {v0}, Lcom/instagram/android/creation/a/ah;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->onBackPressed()V

    .line 173
    return-void
.end method
