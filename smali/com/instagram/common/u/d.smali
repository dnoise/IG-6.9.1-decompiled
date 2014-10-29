.class final Lcom/instagram/common/u/d;
.super Ljava/lang/Object;
.source "NotificationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/common/u/a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/instagram/common/u/b;


# direct methods
.method constructor <init>(Lcom/instagram/common/u/b;Lcom/instagram/common/u/a;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/instagram/common/u/d;->c:Lcom/instagram/common/u/b;

    iput-object p2, p0, Lcom/instagram/common/u/d;->a:Lcom/instagram/common/u/a;

    iput-object p3, p0, Lcom/instagram/common/u/d;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/instagram/common/u/d;->a:Lcom/instagram/common/u/a;

    invoke-virtual {v0}, Lcom/instagram/common/u/a;->a()Lcom/instagram/common/u/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/common/u/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/instagram/common/u/a;->a(Ljava/lang/String;)V

    .line 87
    return-void
.end method
