.class final Lcom/instagram/android/fragment/fz;
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
    .line 90
    iput-object p1, p0, Lcom/instagram/android/fragment/fz;->a:Lcom/instagram/android/fragment/fy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 93
    invoke-static {}, Lcom/instagram/o/f/f;->a()Lcom/instagram/o/f/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/fz;->a:Lcom/instagram/android/fragment/fy;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/fy;->p()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/o/f/e;->b(Landroid/support/v4/app/s;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    .line 94
    return-void
.end method
