.class final Lcom/instagram/android/people/b/g;
.super Ljava/lang/Object;
.source "PeopleTagFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/people/b/f;


# direct methods
.method constructor <init>(Lcom/instagram/android/people/b/f;)V
    .locals 0
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lcom/instagram/android/people/b/g;->a:Lcom/instagram/android/people/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/instagram/android/people/b/g;->a:Lcom/instagram/android/people/b/f;

    iget-object v0, v0, Lcom/instagram/android/people/b/f;->a:Lcom/instagram/android/people/b/a;

    invoke-virtual {v0}, Lcom/instagram/android/people/b/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->finish()V

    .line 267
    return-void
.end method
