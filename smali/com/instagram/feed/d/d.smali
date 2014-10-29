.class public final Lcom/instagram/feed/d/d;
.super Ljava/lang/Enum;
.source "Comment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/feed/d/d;",
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

    .line 102
    sput v3, Lcom/instagram/feed/d/d;->a:I

    .line 103
    sput v0, Lcom/instagram/feed/d/d;->b:I

    .line 101
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/instagram/feed/d/d;->a:I

    aput v2, v0, v1

    sget v1, Lcom/instagram/feed/d/d;->b:I

    aput v1, v0, v3

    sput-object v0, Lcom/instagram/feed/d/d;->c:[I

    return-void
.end method

.method public static a(I)I
    .locals 1
    .parameter

    .prologue
    .line 106
    packed-switch p0, :pswitch_data_0

    .line 111
    sget v0, Lcom/instagram/feed/d/d;->a:I

    :goto_0
    return v0

    .line 108
    :pswitch_0
    sget v0, Lcom/instagram/feed/d/d;->b:I

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
