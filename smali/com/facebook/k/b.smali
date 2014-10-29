.class final Lcom/facebook/k/b;
.super Ljava/lang/Enum;
.source "SoLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/k/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:I

.field public static final enum b:I

.field private static final synthetic c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x2

    const/4 v3, 0x1

    .line 52
    sput v3, Lcom/facebook/k/b;->a:I

    .line 53
    sput v0, Lcom/facebook/k/b;->b:I

    .line 51
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/facebook/k/b;->a:I

    aput v2, v0, v1

    sget v1, Lcom/facebook/k/b;->b:I

    aput v1, v0, v3

    sput-object v0, Lcom/facebook/k/b;->c:[I

    return-void
.end method
