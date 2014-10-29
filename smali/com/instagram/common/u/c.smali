.class final Lcom/instagram/common/u/c;
.super Ljava/lang/Object;
.source "NotificationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/common/u/a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/instagram/common/u/c/a;

.field final synthetic d:Lcom/instagram/common/u/b;


# direct methods
.method constructor <init>(Lcom/instagram/common/u/b;Lcom/instagram/common/u/a;Ljava/lang/String;Lcom/instagram/common/u/c/a;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/instagram/common/u/c;->d:Lcom/instagram/common/u/b;

    iput-object p2, p0, Lcom/instagram/common/u/c;->a:Lcom/instagram/common/u/a;

    iput-object p3, p0, Lcom/instagram/common/u/c;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/instagram/common/u/c;->c:Lcom/instagram/common/u/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/instagram/common/u/c;->a:Lcom/instagram/common/u/a;

    invoke-virtual {v0}, Lcom/instagram/common/u/a;->a()Lcom/instagram/common/u/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/common/u/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/instagram/common/u/c;->c:Lcom/instagram/common/u/c/a;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/u/a;->a(Ljava/lang/String;Lcom/instagram/common/u/c/a;)V

    .line 73
    return-void
.end method
