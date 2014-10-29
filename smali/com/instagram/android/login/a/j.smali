.class final Lcom/instagram/android/login/a/j;
.super Ljava/lang/Object;
.source "ValidateAccountCallbacks.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/base/a/a;

.field final synthetic b:Lcom/instagram/android/login/a/i;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/a/i;Lcom/instagram/base/a/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/instagram/android/login/a/j;->b:Lcom/instagram/android/login/a/i;

    iput-object p2, p0, Lcom/instagram/android/login/a/j;->a:Lcom/instagram/base/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/instagram/android/login/a/j;->a:Lcom/instagram/base/a/a;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/instagram/android/login/a/j;->a:Lcom/instagram/base/a/a;

    invoke-virtual {v0}, Lcom/instagram/base/a/a;->b()V

    .line 68
    :cond_0
    return-void
.end method
