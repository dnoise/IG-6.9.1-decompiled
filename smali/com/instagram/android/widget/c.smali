.class final Lcom/instagram/android/widget/c;
.super Ljava/lang/Object;
.source "ContactsConfirmationDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/widget/b;


# direct methods
.method constructor <init>(Lcom/instagram/android/widget/b;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/instagram/android/widget/c;->a:Lcom/instagram/android/widget/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lcom/instagram/common/a/a/f;

    invoke-direct {v0}, Lcom/instagram/common/a/a/f;-><init>()V

    new-instance v1, Lcom/instagram/android/k/b/a;

    invoke-direct {v1}, Lcom/instagram/android/k/b/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/instagram/common/a/a/f;->a(Lcom/instagram/common/a/a/a;)V

    .line 68
    return-void
.end method
