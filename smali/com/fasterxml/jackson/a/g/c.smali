.class public final enum Lcom/fasterxml/jackson/a/g/c;
.super Ljava/lang/Enum;
.source "BufferRecycler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fasterxml/jackson/a/g/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/fasterxml/jackson/a/g/c;

.field public static final enum b:Lcom/fasterxml/jackson/a/g/c;

.field public static final enum c:Lcom/fasterxml/jackson/a/g/c;

.field public static final enum d:Lcom/fasterxml/jackson/a/g/c;

.field private static final synthetic f:[Lcom/fasterxml/jackson/a/g/c;


# instance fields
.field protected final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xc8

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    new-instance v0, Lcom/fasterxml/jackson/a/g/c;

    const-string v1, "TOKEN_BUFFER"

    const/16 v2, 0x7d0

    invoke-direct {v0, v1, v3, v2}, Lcom/fasterxml/jackson/a/g/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fasterxml/jackson/a/g/c;->a:Lcom/fasterxml/jackson/a/g/c;

    .line 45
    new-instance v0, Lcom/fasterxml/jackson/a/g/c;

    const-string v1, "CONCAT_BUFFER"

    const/16 v2, 0x7d0

    invoke-direct {v0, v1, v4, v2}, Lcom/fasterxml/jackson/a/g/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fasterxml/jackson/a/g/c;->b:Lcom/fasterxml/jackson/a/g/c;

    .line 46
    new-instance v0, Lcom/fasterxml/jackson/a/g/c;

    const-string v1, "TEXT_BUFFER"

    invoke-direct {v0, v1, v5, v7}, Lcom/fasterxml/jackson/a/g/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fasterxml/jackson/a/g/c;->c:Lcom/fasterxml/jackson/a/g/c;

    .line 47
    new-instance v0, Lcom/fasterxml/jackson/a/g/c;

    const-string v1, "NAME_COPY_BUFFER"

    invoke-direct {v0, v1, v6, v7}, Lcom/fasterxml/jackson/a/g/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fasterxml/jackson/a/g/c;->d:Lcom/fasterxml/jackson/a/g/c;

    .line 43
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/fasterxml/jackson/a/g/c;

    sget-object v1, Lcom/fasterxml/jackson/a/g/c;->a:Lcom/fasterxml/jackson/a/g/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fasterxml/jackson/a/g/c;->b:Lcom/fasterxml/jackson/a/g/c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fasterxml/jackson/a/g/c;->c:Lcom/fasterxml/jackson/a/g/c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fasterxml/jackson/a/g/c;->d:Lcom/fasterxml/jackson/a/g/c;

    aput-object v1, v0, v6

    sput-object v0, Lcom/fasterxml/jackson/a/g/c;->f:[Lcom/fasterxml/jackson/a/g/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/fasterxml/jackson/a/g/c;->e:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/a/g/c;
    .locals 1
    .parameter "name"

    .prologue
    .line 43
    const-class v0, Lcom/fasterxml/jackson/a/g/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/a/g/c;

    return-object v0
.end method

.method public static values()[Lcom/fasterxml/jackson/a/g/c;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/fasterxml/jackson/a/g/c;->f:[Lcom/fasterxml/jackson/a/g/c;

    invoke-virtual {v0}, [Lcom/fasterxml/jackson/a/g/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/a/g/c;

    return-object v0
.end method
