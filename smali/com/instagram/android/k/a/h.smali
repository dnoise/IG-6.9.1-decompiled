.class final Lcom/instagram/android/k/a/h;
.super Ljava/lang/Object;
.source "UserRowViewBinder.java"

# interfaces
.implements Lcom/instagram/android/i/a/d;


# instance fields
.field final synthetic a:Lcom/instagram/android/k/a/j;

.field final synthetic b:Lcom/instagram/android/i/d;

.field final synthetic c:Lcom/instagram/user/c/a;

.field final synthetic d:Lcom/instagram/android/k/a/f;


# direct methods
.method constructor <init>(Lcom/instagram/android/k/a/f;Lcom/instagram/android/k/a/j;Lcom/instagram/android/i/d;Lcom/instagram/user/c/a;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/instagram/android/k/a/h;->d:Lcom/instagram/android/k/a/f;

    iput-object p2, p0, Lcom/instagram/android/k/a/h;->a:Lcom/instagram/android/k/a/j;

    iput-object p3, p0, Lcom/instagram/android/k/a/h;->b:Lcom/instagram/android/i/d;

    iput-object p4, p0, Lcom/instagram/android/k/a/h;->c:Lcom/instagram/user/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/instagram/android/k/a/h;->a:Lcom/instagram/android/k/a/j;

    iget-object v0, v0, Lcom/instagram/android/k/a/j;->i:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/instagram/android/k/a/h;->a:Lcom/instagram/android/k/a/j;

    iget-object v0, v0, Lcom/instagram/android/k/a/j;->h:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/instagram/android/k/a/h;->b:Lcom/instagram/android/i/d;

    iget-object v1, p0, Lcom/instagram/android/k/a/h;->c:Lcom/instagram/user/c/a;

    invoke-interface {v0}, Lcom/instagram/android/i/d;->a()V

    .line 81
    return-void
.end method
