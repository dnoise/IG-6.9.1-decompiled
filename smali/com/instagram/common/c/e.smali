.class final Lcom/instagram/common/c/e;
.super Ljava/lang/Object;
.source "IgAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lcom/instagram/common/c/a;

.field final b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field


# direct methods
.method varargs constructor <init>(Lcom/instagram/common/c/a;[Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/common/c/a;",
            "[TData;)V"
        }
    .end annotation

    .prologue
    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 573
    iput-object p1, p0, Lcom/instagram/common/c/e;->a:Lcom/instagram/common/c/a;

    .line 574
    iput-object p2, p0, Lcom/instagram/common/c/e;->b:[Ljava/lang/Object;

    .line 575
    return-void
.end method
