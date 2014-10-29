.class final Lcom/instagram/common/u/f;
.super Ljava/lang/Object;
.source "NotificationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/common/u/a;

.field final synthetic b:Lcom/instagram/common/u/b;


# direct methods
.method constructor <init>(Lcom/instagram/common/u/b;Lcom/instagram/common/u/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/instagram/common/u/f;->b:Lcom/instagram/common/u/b;

    iput-object p2, p0, Lcom/instagram/common/u/f;->a:Lcom/instagram/common/u/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/instagram/common/u/f;->a:Lcom/instagram/common/u/a;

    invoke-virtual {v0}, Lcom/instagram/common/u/a;->a()Lcom/instagram/common/u/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/u/a;->b()V

    .line 115
    return-void
.end method
