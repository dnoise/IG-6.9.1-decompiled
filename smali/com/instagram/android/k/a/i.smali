.class final Lcom/instagram/android/k/a/i;
.super Ljava/lang/Object;
.source "UserRowViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/instagram/android/i/d;

.field final synthetic c:Lcom/instagram/user/c/a;

.field final synthetic d:Landroid/support/v4/app/s;

.field final synthetic e:Lcom/instagram/android/k/a/f;


# direct methods
.method constructor <init>(Lcom/instagram/android/k/a/f;ZLcom/instagram/android/i/d;Lcom/instagram/user/c/a;Landroid/support/v4/app/s;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/instagram/android/k/a/i;->e:Lcom/instagram/android/k/a/f;

    iput-boolean p2, p0, Lcom/instagram/android/k/a/i;->a:Z

    iput-object p3, p0, Lcom/instagram/android/k/a/i;->b:Lcom/instagram/android/i/d;

    iput-object p4, p0, Lcom/instagram/android/k/a/i;->c:Lcom/instagram/user/c/a;

    iput-object p5, p0, Lcom/instagram/android/k/a/i;->d:Landroid/support/v4/app/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/instagram/android/k/a/i;->a:Z

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/instagram/android/k/a/i;->b:Lcom/instagram/android/i/d;

    iget-object v1, p0, Lcom/instagram/android/k/a/i;->c:Lcom/instagram/user/c/a;

    invoke-interface {v0, v1}, Lcom/instagram/android/i/d;->b(Lcom/instagram/user/c/a;)V

    .line 102
    :cond_0
    invoke-static {}, Lcom/instagram/o/f/f;->a()Lcom/instagram/o/f/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/k/a/i;->d:Landroid/support/v4/app/s;

    iget-object v2, p0, Lcom/instagram/android/k/a/i;->c:Lcom/instagram/user/c/a;

    invoke-virtual {v2}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/instagram/o/f/e;->a(Landroid/support/v4/app/s;Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    .line 104
    return-void
.end method
