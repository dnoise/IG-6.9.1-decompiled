.class public final enum Lcom/instagram/a/e;
.super Ljava/lang/Enum;
.source "ActionBarItemBackgroundDrawable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/a/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/instagram/a/e;

.field public static final enum b:Lcom/instagram/a/e;

.field public static final enum c:Lcom/instagram/a/e;

.field private static final synthetic f:[Lcom/instagram/a/e;


# instance fields
.field private final d:I

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 23
    new-instance v0, Lcom/instagram/a/e;

    const-string v1, "DARK"

    sget v2, Lcom/facebook/as;->grey_medium:I

    sget v3, Lcom/facebook/as;->grey_8:I

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/instagram/a/e;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/instagram/a/e;->a:Lcom/instagram/a/e;

    .line 24
    new-instance v0, Lcom/instagram/a/e;

    const-string v1, "BLUE"

    sget v2, Lcom/facebook/as;->blue_4:I

    sget v3, Lcom/facebook/as;->blue_6:I

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/instagram/a/e;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/instagram/a/e;->b:Lcom/instagram/a/e;

    .line 25
    new-instance v0, Lcom/instagram/a/e;

    const-string v1, "WHITE"

    sget v2, Lcom/facebook/as;->grey_2:I

    sget v3, Lcom/facebook/as;->grey_1:I

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/instagram/a/e;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/instagram/a/e;->c:Lcom/instagram/a/e;

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/instagram/a/e;

    sget-object v1, Lcom/instagram/a/e;->a:Lcom/instagram/a/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/instagram/a/e;->b:Lcom/instagram/a/e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/instagram/a/e;->c:Lcom/instagram/a/e;

    aput-object v1, v0, v6

    sput-object v0, Lcom/instagram/a/e;->f:[Lcom/instagram/a/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lcom/instagram/a/e;->d:I

    .line 32
    iput p4, p0, Lcom/instagram/a/e;->e:I

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/instagram/a/e;)I
    .locals 1
    .parameter

    .prologue
    .line 22
    iget v0, p0, Lcom/instagram/a/e;->e:I

    return v0
.end method

.method static synthetic b(Lcom/instagram/a/e;)I
    .locals 1
    .parameter

    .prologue
    .line 22
    iget v0, p0, Lcom/instagram/a/e;->d:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/a/e;
    .locals 1
    .parameter "name"

    .prologue
    .line 22
    const-class v0, Lcom/instagram/a/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/a/e;

    return-object v0
.end method

.method public static values()[Lcom/instagram/a/e;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/instagram/a/e;->f:[Lcom/instagram/a/e;

    invoke-virtual {v0}, [Lcom/instagram/a/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/a/e;

    return-object v0
.end method
