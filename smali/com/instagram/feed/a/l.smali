.class public final Lcom/instagram/feed/a/l;
.super Ljava/lang/Enum;
.source "UserAddLabelRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/feed/a/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:I

.field private static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 21
    sput v0, Lcom/instagram/feed/a/l;->a:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/instagram/feed/a/l;->a:I

    aput v2, v0, v1

    sput-object v0, Lcom/instagram/feed/a/l;->b:[I

    return-void
.end method
