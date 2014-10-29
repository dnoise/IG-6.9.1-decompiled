.class final Lcom/instagram/android/login/fragment/bc;
.super Ljava/lang/Object;
.source "RegisterFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/login/fragment/bb;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/bb;)V
    .locals 0
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/instagram/android/login/fragment/bc;->a:Lcom/instagram/android/login/fragment/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/instagram/android/login/fragment/bc;->a:Lcom/instagram/android/login/fragment/bb;

    iget-object v0, v0, Lcom/instagram/android/login/fragment/bb;->a:Lcom/instagram/android/login/fragment/an;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/an;->b(Lcom/instagram/android/login/fragment/an;)V

    .line 315
    return-void
.end method
