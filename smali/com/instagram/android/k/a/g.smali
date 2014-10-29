.class final Lcom/instagram/android/k/a/g;
.super Ljava/lang/Object;
.source "UserRowViewBinder.java"

# interfaces
.implements Lcom/instagram/user/follow/g;


# instance fields
.field final synthetic a:Lcom/instagram/android/i/d;

.field final synthetic b:Lcom/instagram/user/c/a;

.field final synthetic c:Lcom/instagram/android/k/a/f;


# direct methods
.method constructor <init>(Lcom/instagram/android/k/a/f;Lcom/instagram/android/i/d;Lcom/instagram/user/c/a;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/instagram/android/k/a/g;->c:Lcom/instagram/android/k/a/f;

    iput-object p2, p0, Lcom/instagram/android/k/a/g;->a:Lcom/instagram/android/i/d;

    iput-object p3, p0, Lcom/instagram/android/k/a/g;->b:Lcom/instagram/user/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/instagram/user/c/c;)V
    .locals 2
    .parameter

    .prologue
    .line 61
    sget-object v0, Lcom/instagram/user/c/c;->c:Lcom/instagram/user/c/c;

    if-ne p1, v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/instagram/android/k/a/g;->a:Lcom/instagram/android/i/d;

    iget-object v1, p0, Lcom/instagram/android/k/a/g;->b:Lcom/instagram/user/c/a;

    invoke-interface {v0, v1}, Lcom/instagram/android/i/d;->a(Lcom/instagram/user/c/a;)V

    .line 64
    :cond_0
    return-void
.end method
