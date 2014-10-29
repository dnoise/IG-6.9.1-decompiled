.class public Lcom/fasterxml/jackson/a/e;
.super Ljava/lang/Object;
.source "JsonFactory.java"

# interfaces
.implements Lcom/fasterxml/jackson/a/x;
.implements Ljava/io/Serializable;


# static fields
#the value of this static final field might be set in the static constructor
.field protected static final DEFAULT_FACTORY_FEATURE_FLAGS:I = 0x0

#the value of this static final field might be set in the static constructor
.field protected static final DEFAULT_GENERATOR_FEATURE_FLAGS:I = 0x0

#the value of this static final field might be set in the static constructor
.field protected static final DEFAULT_PARSER_FEATURE_FLAGS:I = 0x0

.field private static final DEFAULT_ROOT_VALUE_SEPARATOR:Lcom/fasterxml/jackson/a/u; = null

.field public static final FORMAT_NAME_JSON:Ljava/lang/String; = "JSON"

.field protected static final _recyclerRef:Ljava/lang/ThreadLocal; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/fasterxml/jackson/a/g/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x791a681719524b4aL


# instance fields
.field protected _characterEscapes:Lcom/fasterxml/jackson/a/c/c;

.field protected _factoryFeatures:I

.field protected _generatorFeatures:I

.field protected _inputDecorator:Lcom/fasterxml/jackson/a/c/e;

.field protected _objectCodec:Lcom/fasterxml/jackson/a/s;

.field protected _outputDecorator:Lcom/fasterxml/jackson/a/c/j;

.field protected _parserFeatures:I

.field protected final transient _rootByteSymbols:Lcom/fasterxml/jackson/a/e/a;

.field protected final transient _rootCharSymbols:Lcom/fasterxml/jackson/a/e/d;

.field protected _rootValueSeparator:Lcom/fasterxml/jackson/a/u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 139
    invoke-static {}, Lcom/fasterxml/jackson/a/f;->a()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/a/e;->DEFAULT_FACTORY_FEATURE_FLAGS:I

    .line 145
    invoke-static {}, Lcom/fasterxml/jackson/a/n;->a()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/a/e;->DEFAULT_PARSER_FEATURE_FLAGS:I

    .line 151
    invoke-static {}, Lcom/fasterxml/jackson/a/i;->a()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/a/e;->DEFAULT_GENERATOR_FEATURE_FLAGS:I

    .line 153
    sget-object v0, Lcom/fasterxml/jackson/a/g/e;->a:Lcom/fasterxml/jackson/a/c/l;

    sput-object v0, Lcom/fasterxml/jackson/a/e;->DEFAULT_ROOT_VALUE_SEPARATOR:Lcom/fasterxml/jackson/a/u;

    .line 166
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/a/e;->_recyclerRef:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/e;-><init>(Lcom/fasterxml/jackson/a/s;)V

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/a/e;Lcom/fasterxml/jackson/a/s;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    invoke-static {}, Lcom/fasterxml/jackson/a/e/d;->a()Lcom/fasterxml/jackson/a/e/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/e;->_rootCharSymbols:Lcom/fasterxml/jackson/a/e/d;

    .line 183
    invoke-static {}, Lcom/fasterxml/jackson/a/e/a;->a()Lcom/fasterxml/jackson/a/e/a;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/e;->_rootByteSymbols:Lcom/fasterxml/jackson/a/e/a;

    .line 203
    sget v0, Lcom/fasterxml/jackson/a/e;->DEFAULT_FACTORY_FEATURE_FLAGS:I

    iput v0, p0, Lcom/fasterxml/jackson/a/e;->_factoryFeatures:I

    .line 208
    sget v0, Lcom/fasterxml/jackson/a/e;->DEFAULT_PARSER_FEATURE_FLAGS:I

    iput v0, p0, Lcom/fasterxml/jackson/a/e;->_parserFeatures:I

    .line 213
    sget v0, Lcom/fasterxml/jackson/a/e;->DEFAULT_GENERATOR_FEATURE_FLAGS:I

    iput v0, p0, Lcom/fasterxml/jackson/a/e;->_generatorFeatures:I

    .line 241
    sget-object v0, Lcom/fasterxml/jackson/a/e;->DEFAULT_ROOT_VALUE_SEPARATOR:Lcom/fasterxml/jackson/a/u;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/e;->_rootValueSeparator:Lcom/fasterxml/jackson/a/u;

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/e;->_objectCodec:Lcom/fasterxml/jackson/a/s;

    .line 271
    iget v0, p1, Lcom/fasterxml/jackson/a/e;->_factoryFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/a/e;->_factoryFeatures:I

    .line 272
    iget v0, p1, Lcom/fasterxml/jackson/a/e;->_parserFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/a/e;->_parserFeatures:I

    .line 273
    iget v0, p1, Lcom/fasterxml/jackson/a/e;->_generatorFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/a/e;->_generatorFeatures:I

    .line 274
    iget-object v0, p1, Lcom/fasterxml/jackson/a/e;->_characterEscapes:Lcom/fasterxml/jackson/a/c/c;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/e;->_characterEscapes:Lcom/fasterxml/jackson/a/c/c;

    .line 275
    iget-object v0, p1, Lcom/fasterxml/jackson/a/e;->_inputDecorator:Lcom/fasterxml/jackson/a/c/e;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/e;->_inputDecorator:Lcom/fasterxml/jackson/a/c/e;

    .line 276
    iget-object v0, p1, Lcom/fasterxml/jackson/a/e;->_outputDecorator:Lcom/fasterxml/jackson/a/c/j;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/e;->_outputDecorator:Lcom/fasterxml/jackson/a/c/j;

    .line 277
    iget-object v0, p1, Lcom/fasterxml/jackson/a/e;->_rootValueSeparator:Lcom/fasterxml/jackson/a/u;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/e;->_rootValueSeparator:Lcom/fasterxml/jackson/a/u;

    .line 283
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/a/s;)V
    .locals 1
    .parameter

    .prologue
    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    invoke-static {}, Lcom/fasterxml/jackson/a/e/d;->a()Lcom/fasterxml/jackson/a/e/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/e;->_rootCharSymbols:Lcom/fasterxml/jackson/a/e/d;

    .line 183
    invoke-static {}, Lcom/fasterxml/jackson/a/e/a;->a()Lcom/fasterxml/jackson/a/e/a;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/e;->_rootByteSymbols:Lcom/fasterxml/jackson/a/e/a;

    .line 203
    sget v0, Lcom/fasterxml/jackson/a/e;->DEFAULT_FACTORY_FEATURE_FLAGS:I

    iput v0, p0, Lcom/fasterxml/jackson/a/e;->_factoryFeatures:I

    .line 208
    sget v0, Lcom/fasterxml/jackson/a/e;->DEFAULT_PARSER_FEATURE_FLAGS:I

    iput v0, p0, Lcom/fasterxml/jackson/a/e;->_parserFeatures:I

    .line 213
    sget v0, Lcom/fasterxml/jackson/a/e;->DEFAULT_GENERATOR_FEATURE_FLAGS:I

    iput v0, p0, Lcom/fasterxml/jackson/a/e;->_generatorFeatures:I

    .line 241
    sget-object v0, Lcom/fasterxml/jackson/a/e;->DEFAULT_ROOT_VALUE_SEPARATOR:Lcom/fasterxml/jackson/a/u;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/e;->_rootValueSeparator:Lcom/fasterxml/jackson/a/u;

    .line 261
    iput-object p1, p0, Lcom/fasterxml/jackson/a/e;->_objectCodec:Lcom/fasterxml/jackson/a/s;

    return-void
.end method


# virtual methods
.method protected _checkInvalidCopy(Ljava/lang/Class;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 312
    .local p1, exp:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 313
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed copy(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/e;->version()Lcom/fasterxml/jackson/a/w;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") does not override copy(); it has to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_0
    return-void
.end method

.method protected _createContext(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/a/c/d;
    .locals 2
    .parameter "srcRef"
    .parameter "resourceManaged"

    .prologue
    .line 1373
    new-instance v0, Lcom/fasterxml/jackson/a/c/d;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/e;->_getBufferRecycler()Lcom/fasterxml/jackson/a/g/a;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/fasterxml/jackson/a/c/d;-><init>(Lcom/fasterxml/jackson/a/g/a;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method protected _createGenerator(Ljava/io/Writer;Lcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/h;
    .locals 3
    .parameter "out"
    .parameter "ctxt"

    .prologue
    .line 1293
    new-instance v0, Lcom/fasterxml/jackson/a/d/l;

    iget v1, p0, Lcom/fasterxml/jackson/a/e;->_generatorFeatures:I

    iget-object v2, p0, Lcom/fasterxml/jackson/a/e;->_objectCodec:Lcom/fasterxml/jackson/a/s;

    invoke-direct {v0, p2, v1, v2, p1}, Lcom/fasterxml/jackson/a/d/l;-><init>(Lcom/fasterxml/jackson/a/c/d;ILcom/fasterxml/jackson/a/s;Ljava/io/Writer;)V

    .line 1295
    iget-object v1, p0, Lcom/fasterxml/jackson/a/e;->_characterEscapes:Lcom/fasterxml/jackson/a/c/c;

    if-eqz v1, :cond_0

    .line 1296
    iget-object v1, p0, Lcom/fasterxml/jackson/a/e;->_characterEscapes:Lcom/fasterxml/jackson/a/c/c;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/a/d/l;->setCharacterEscapes(Lcom/fasterxml/jackson/a/c/c;)Lcom/fasterxml/jackson/a/h;

    .line 1298
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/a/e;->_rootValueSeparator:Lcom/fasterxml/jackson/a/u;

    .line 1299
    sget-object v2, Lcom/fasterxml/jackson/a/e;->DEFAULT_ROOT_VALUE_SEPARATOR:Lcom/fasterxml/jackson/a/u;

    if-eq v1, v2, :cond_1

    .line 1300
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/a/d/l;->setRootValueSeparator(Lcom/fasterxml/jackson/a/u;)Lcom/fasterxml/jackson/a/h;

    .line 1302
    :cond_1
    return-object v0
.end method

.method protected _createJsonGenerator(Ljava/io/Writer;Lcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/h;
    .locals 1
    .parameter "out"
    .parameter "ctxt"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1315
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/a/e;->_createGenerator(Ljava/io/Writer;Lcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/h;

    move-result-object v0

    return-object v0
.end method

.method protected _createJsonParser(Ljava/io/InputStream;Lcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/l;
    .locals 1
    .parameter "in"
    .parameter "ctxt"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1214
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/a/e;->_createParser(Ljava/io/InputStream;Lcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    return-object v0
.end method

.method protected _createJsonParser(Ljava/io/Reader;Lcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/l;
    .locals 1
    .parameter "r"
    .parameter "ctxt"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1242
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/a/e;->_createParser(Ljava/io/Reader;Lcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    return-object v0
.end method

.method protected _createJsonParser([BIILcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/l;
    .locals 1
    .parameter "data"
    .parameter "offset"
    .parameter "len"
    .parameter "ctxt"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1270
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/a/e;->_createParser([BIILcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    return-object v0
.end method

.method protected _createParser(Ljava/io/InputStream;Lcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/l;
    .locals 7
    .parameter "in"
    .parameter "ctxt"

    .prologue
    .line 1203
    new-instance v0, Lcom/fasterxml/jackson/a/d/a;

    invoke-direct {v0, p2, p1}, Lcom/fasterxml/jackson/a/d/a;-><init>(Lcom/fasterxml/jackson/a/c/d;Ljava/io/InputStream;)V

    iget v1, p0, Lcom/fasterxml/jackson/a/e;->_parserFeatures:I

    iget-object v2, p0, Lcom/fasterxml/jackson/a/e;->_objectCodec:Lcom/fasterxml/jackson/a/s;

    iget-object v3, p0, Lcom/fasterxml/jackson/a/e;->_rootByteSymbols:Lcom/fasterxml/jackson/a/e/a;

    iget-object v4, p0, Lcom/fasterxml/jackson/a/e;->_rootCharSymbols:Lcom/fasterxml/jackson/a/e/d;

    sget-object v5, Lcom/fasterxml/jackson/a/f;->b:Lcom/fasterxml/jackson/a/f;

    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/a/e;->isEnabled(Lcom/fasterxml/jackson/a/f;)Z

    move-result v5

    sget-object v6, Lcom/fasterxml/jackson/a/f;->a:Lcom/fasterxml/jackson/a/f;

    invoke-virtual {p0, v6}, Lcom/fasterxml/jackson/a/e;->isEnabled(Lcom/fasterxml/jackson/a/f;)Z

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/fasterxml/jackson/a/d/a;->a(ILcom/fasterxml/jackson/a/s;Lcom/fasterxml/jackson/a/e/a;Lcom/fasterxml/jackson/a/e/d;ZZ)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    return-object v0
.end method

.method protected _createParser(Ljava/io/Reader;Lcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/l;
    .locals 6
    .parameter "r"
    .parameter "ctxt"

    .prologue
    .line 1232
    new-instance v0, Lcom/fasterxml/jackson/a/d/g;

    iget v2, p0, Lcom/fasterxml/jackson/a/e;->_parserFeatures:I

    iget-object v4, p0, Lcom/fasterxml/jackson/a/e;->_objectCodec:Lcom/fasterxml/jackson/a/s;

    iget-object v1, p0, Lcom/fasterxml/jackson/a/e;->_rootCharSymbols:Lcom/fasterxml/jackson/a/e/d;

    sget-object v3, Lcom/fasterxml/jackson/a/f;->b:Lcom/fasterxml/jackson/a/f;

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/a/e;->isEnabled(Lcom/fasterxml/jackson/a/f;)Z

    move-result v3

    sget-object v5, Lcom/fasterxml/jackson/a/f;->a:Lcom/fasterxml/jackson/a/f;

    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/a/e;->isEnabled(Lcom/fasterxml/jackson/a/f;)Z

    move-result v5

    invoke-virtual {v1, v3, v5}, Lcom/fasterxml/jackson/a/e/d;->a(ZZ)Lcom/fasterxml/jackson/a/e/d;

    move-result-object v5

    move-object v1, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/a/d/g;-><init>(Lcom/fasterxml/jackson/a/c/d;ILjava/io/Reader;Lcom/fasterxml/jackson/a/s;Lcom/fasterxml/jackson/a/e/d;)V

    return-object v0
.end method

.method protected _createParser([BIILcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/l;
    .locals 7
    .parameter "data"
    .parameter "offset"
    .parameter "len"
    .parameter "ctxt"

    .prologue
    .line 1259
    new-instance v0, Lcom/fasterxml/jackson/a/d/a;

    invoke-direct {v0, p4, p1, p2, p3}, Lcom/fasterxml/jackson/a/d/a;-><init>(Lcom/fasterxml/jackson/a/c/d;[BII)V

    iget v1, p0, Lcom/fasterxml/jackson/a/e;->_parserFeatures:I

    iget-object v2, p0, Lcom/fasterxml/jackson/a/e;->_objectCodec:Lcom/fasterxml/jackson/a/s;

    iget-object v3, p0, Lcom/fasterxml/jackson/a/e;->_rootByteSymbols:Lcom/fasterxml/jackson/a/e/a;

    iget-object v4, p0, Lcom/fasterxml/jackson/a/e;->_rootCharSymbols:Lcom/fasterxml/jackson/a/e/d;

    sget-object v5, Lcom/fasterxml/jackson/a/f;->b:Lcom/fasterxml/jackson/a/f;

    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/a/e;->isEnabled(Lcom/fasterxml/jackson/a/f;)Z

    move-result v5

    sget-object v6, Lcom/fasterxml/jackson/a/f;->a:Lcom/fasterxml/jackson/a/f;

    invoke-virtual {p0, v6}, Lcom/fasterxml/jackson/a/e;->isEnabled(Lcom/fasterxml/jackson/a/f;)Z

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/fasterxml/jackson/a/d/a;->a(ILcom/fasterxml/jackson/a/s;Lcom/fasterxml/jackson/a/e/a;Lcom/fasterxml/jackson/a/e/d;ZZ)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    return-object v0
.end method

.method protected _createUTF8Generator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/h;
    .locals 3
    .parameter "out"
    .parameter "ctxt"

    .prologue
    .line 1329
    new-instance v0, Lcom/fasterxml/jackson/a/d/i;

    iget v1, p0, Lcom/fasterxml/jackson/a/e;->_generatorFeatures:I

    iget-object v2, p0, Lcom/fasterxml/jackson/a/e;->_objectCodec:Lcom/fasterxml/jackson/a/s;

    invoke-direct {v0, p2, v1, v2, p1}, Lcom/fasterxml/jackson/a/d/i;-><init>(Lcom/fasterxml/jackson/a/c/d;ILcom/fasterxml/jackson/a/s;Ljava/io/OutputStream;)V

    .line 1331
    iget-object v1, p0, Lcom/fasterxml/jackson/a/e;->_characterEscapes:Lcom/fasterxml/jackson/a/c/c;

    if-eqz v1, :cond_0

    .line 1332
    iget-object v1, p0, Lcom/fasterxml/jackson/a/e;->_characterEscapes:Lcom/fasterxml/jackson/a/c/c;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/a/d/i;->setCharacterEscapes(Lcom/fasterxml/jackson/a/c/c;)Lcom/fasterxml/jackson/a/h;

    .line 1334
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/a/e;->_rootValueSeparator:Lcom/fasterxml/jackson/a/u;

    .line 1335
    sget-object v2, Lcom/fasterxml/jackson/a/e;->DEFAULT_ROOT_VALUE_SEPARATOR:Lcom/fasterxml/jackson/a/u;

    if-eq v1, v2, :cond_1

    .line 1336
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/a/d/i;->setRootValueSeparator(Lcom/fasterxml/jackson/a/u;)Lcom/fasterxml/jackson/a/h;

    .line 1338
    :cond_1
    return-object v0
.end method

.method protected _createUTF8JsonGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/h;
    .locals 1
    .parameter "out"
    .parameter "ctxt"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1348
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/a/e;->_createUTF8Generator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/h;

    move-result-object v0

    return-object v0
.end method

.method protected _createWriter(Ljava/io/OutputStream;Lcom/fasterxml/jackson/a/d;Lcom/fasterxml/jackson/a/c/d;)Ljava/io/Writer;
    .locals 2
    .parameter "out"
    .parameter "enc"
    .parameter "ctxt"

    .prologue
    .line 1354
    sget-object v0, Lcom/fasterxml/jackson/a/d;->a:Lcom/fasterxml/jackson/a/d;

    if-ne p2, v0, :cond_0

    .line 1355
    new-instance v0, Lcom/fasterxml/jackson/a/c/n;

    invoke-direct {v0, p3, p1}, Lcom/fasterxml/jackson/a/c/n;-><init>(Lcom/fasterxml/jackson/a/c/d;Ljava/io/OutputStream;)V

    .line 1358
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public _getBufferRecycler()Lcom/fasterxml/jackson/a/g/a;
    .locals 3

    .prologue
    .line 1384
    sget-object v0, Lcom/fasterxml/jackson/a/e;->_recyclerRef:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 1385
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 1387
    :goto_0
    if-nez v0, :cond_0

    .line 1388
    new-instance v0, Lcom/fasterxml/jackson/a/g/a;

    invoke-direct {v0}, Lcom/fasterxml/jackson/a/g/a;-><init>()V

    .line 1389
    sget-object v1, Lcom/fasterxml/jackson/a/e;->_recyclerRef:Ljava/lang/ThreadLocal;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1391
    :cond_0
    return-object v0

    .line 1385
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/a/g/a;

    goto :goto_0
.end method

.method protected _optimizedStreamFromURL(Ljava/net/URL;)Ljava/io/InputStream;
    .locals 2
    .parameter "url"

    .prologue
    .line 1402
    const-string v0, "file"

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1409
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 1410
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1412
    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1413
    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    .line 1414
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1420
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public canUseSchema(Lcom/fasterxml/jackson/a/c;)Z
    .locals 2
    .parameter "schema"

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/e;->getFormatName()Ljava/lang/String;

    move-result-object v0

    .line 351
    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/fasterxml/jackson/a/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final configure(Lcom/fasterxml/jackson/a/f;Z)Lcom/fasterxml/jackson/a/e;
    .locals 1
    .parameter "f"
    .parameter "state"

    .prologue
    .line 430
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/e;->enable(Lcom/fasterxml/jackson/a/f;)Lcom/fasterxml/jackson/a/e;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/e;->disable(Lcom/fasterxml/jackson/a/f;)Lcom/fasterxml/jackson/a/e;

    move-result-object v0

    goto :goto_0
.end method

.method public final configure(Lcom/fasterxml/jackson/a/i;Z)Lcom/fasterxml/jackson/a/e;
    .locals 1
    .parameter "f"
    .parameter "state"

    .prologue
    .line 524
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/e;->enable(Lcom/fasterxml/jackson/a/i;)Lcom/fasterxml/jackson/a/e;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/e;->disable(Lcom/fasterxml/jackson/a/i;)Lcom/fasterxml/jackson/a/e;

    move-result-object v0

    goto :goto_0
.end method

.method public final configure(Lcom/fasterxml/jackson/a/n;Z)Lcom/fasterxml/jackson/a/e;
    .locals 1
    .parameter "f"
    .parameter "state"

    .prologue
    .line 469
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/e;->enable(Lcom/fasterxml/jackson/a/n;)Lcom/fasterxml/jackson/a/e;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/e;->disable(Lcom/fasterxml/jackson/a/n;)Lcom/fasterxml/jackson/a/e;

    move-result-object v0

    goto :goto_0
.end method

.method public copy()Lcom/fasterxml/jackson/a/e;
    .locals 2

    .prologue
    .line 301
    const-class v0, Lcom/fasterxml/jackson/a/e;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/e;->_checkInvalidCopy(Ljava/lang/Class;)V

    .line 303
    new-instance v0, Lcom/fasterxml/jackson/a/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/a/e;-><init>(Lcom/fasterxml/jackson/a/e;Lcom/fasterxml/jackson/a/s;)V

    return-object v0
.end method

.method public createGenerator(Ljava/io/File;Lcom/fasterxml/jackson/a/d;)Lcom/fasterxml/jackson/a/h;
    .locals 3
    .parameter "f"
    .parameter "enc"

    .prologue
    .line 1067
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1069
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/e;->_createContext(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/a/c/d;

    move-result-object v1

    .line 1070
    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/a/c/d;->a(Lcom/fasterxml/jackson/a/d;)V

    .line 1071
    sget-object v2, Lcom/fasterxml/jackson/a/d;->a:Lcom/fasterxml/jackson/a/d;

    if-ne p2, v2, :cond_1

    .line 1073
    iget-object v2, p0, Lcom/fasterxml/jackson/a/e;->_outputDecorator:Lcom/fasterxml/jackson/a/c/j;

    if-eqz v2, :cond_0

    .line 1074
    iget-object v0, p0, Lcom/fasterxml/jackson/a/e;->_outputDecorator:Lcom/fasterxml/jackson/a/c/j;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/c/j;->a()Ljava/io/OutputStream;

    move-result-object v0

    .line 1076
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/e;->_createUTF8Generator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/h;

    move-result-object v0

    .line 1083
    :goto_0
    return-object v0

    .line 1078
    :cond_1
    invoke-virtual {p0, v0, p2, v1}, Lcom/fasterxml/jackson/a/e;->_createWriter(Ljava/io/OutputStream;Lcom/fasterxml/jackson/a/d;Lcom/fasterxml/jackson/a/c/d;)Ljava/io/Writer;

    move-result-object v0

    .line 1080
    iget-object v2, p0, Lcom/fasterxml/jackson/a/e;->_outputDecorator:Lcom/fasterxml/jackson/a/c/j;

    if-eqz v2, :cond_2

    .line 1081
    iget-object v0, p0, Lcom/fasterxml/jackson/a/e;->_outputDecorator:Lcom/fasterxml/jackson/a/c/j;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/c/j;->b()Ljava/io/Writer;

    move-result-object v0

    .line 1083
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/e;->_createGenerator(Ljava/io/Writer;Lcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/h;

    move-result-object v0

    goto :goto_0
.end method

.method public createGenerator(Ljava/io/OutputStream;)Lcom/fasterxml/jackson/a/h;
    .locals 1
    .parameter "out"

    .prologue
    .line 1019
    sget-object v0, Lcom/fasterxml/jackson/a/d;->a:Lcom/fasterxml/jackson/a/d;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/a/e;->createGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/a/d;)Lcom/fasterxml/jackson/a/h;

    move-result-object v0

    return-object v0
.end method

.method public createGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/a/d;)Lcom/fasterxml/jackson/a/h;
    .locals 3
    .parameter "out"
    .parameter "enc"

    .prologue
    .line 993
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/a/e;->_createContext(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/a/c/d;

    move-result-object v1

    .line 994
    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/a/c/d;->a(Lcom/fasterxml/jackson/a/d;)V

    .line 995
    sget-object v0, Lcom/fasterxml/jackson/a/d;->a:Lcom/fasterxml/jackson/a/d;

    if-ne p2, v0, :cond_1

    .line 997
    iget-object v0, p0, Lcom/fasterxml/jackson/a/e;->_outputDecorator:Lcom/fasterxml/jackson/a/c/j;

    if-eqz v0, :cond_0

    .line 998
    iget-object v0, p0, Lcom/fasterxml/jackson/a/e;->_outputDecorator:Lcom/fasterxml/jackson/a/c/j;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/c/j;->a()Ljava/io/OutputStream;

    move-result-object p1

    .line 1000
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/a/e;->_createUTF8Generator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/h;

    move-result-object v0

    .line 1007
    :goto_0
    return-object v0

    .line 1002
    :cond_1
    invoke-virtual {p0, p1, p2, v1}, Lcom/fasterxml/jackson/a/e;->_createWriter(Ljava/io/OutputStream;Lcom/fasterxml/jackson/a/d;Lcom/fasterxml/jackson/a/c/d;)Ljava/io/Writer;

    move-result-object v0

    .line 1004
    iget-object v2, p0, Lcom/fasterxml/jackson/a/e;->_outputDecorator:Lcom/fasterxml/jackson/a/c/j;

    if-eqz v2, :cond_2

    .line 1005
    iget-object v0, p0, Lcom/fasterxml/jackson/a/e;->_outputDecorator:Lcom/fasterxml/jackson/a/c/j;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/c/j;->b()Ljava/io/Writer;

    move-result-object v0

    .line 1007
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/e;->_createGenerator(Ljava/io/Writer;Lcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/h;

    move-result-object v0

    goto :goto_0
.end method

.method public createGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/a/h;
    .locals 2
    .parameter "out"

    .prologue
    .line 1040
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/a/e;->_createContext(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/a/c/d;

    move-result-object v0

    .line 1042
    iget-object v1, p0, Lcom/fasterxml/jackson/a/e;->_outputDecorator:Lcom/fasterxml/jackson/a/c/j;

    if-eqz v1, :cond_0

    .line 1043
    iget-object v1, p0, Lcom/fasterxml/jackson/a/e;->_outputDecorator:Lcom/fasterxml/jackson/a/c/j;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/c/j;->b()Ljava/io/Writer;

    move-result-object p1

    .line 1045
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/a/e;->_createGenerator(Ljava/io/Writer;Lcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/h;

    move-result-object v0

    return-object v0
.end method

.method public createJsonGenerator(Ljava/io/File;Lcom/fasterxml/jackson/a/d;)Lcom/fasterxml/jackson/a/h;
    .locals 1
    .parameter "f"
    .parameter "enc"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1177
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/a/e;->createGenerator(Ljava/io/File;Lcom/fasterxml/jackson/a/d;)Lcom/fasterxml/jackson/a/h;

    move-result-object v0

    return-object v0
.end method

.method public createJsonGenerator(Ljava/io/OutputStream;)Lcom/fasterxml/jackson/a/h;
    .locals 1
    .parameter "out"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1153
    sget-object v0, Lcom/fasterxml/jackson/a/d;->a:Lcom/fasterxml/jackson/a/d;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/a/e;->createGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/a/d;)Lcom/fasterxml/jackson/a/h;

    move-result-object v0

    return-object v0
.end method

.method public createJsonGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/a/d;)Lcom/fasterxml/jackson/a/h;
    .locals 1
    .parameter "out"
    .parameter "enc"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1118
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/a/e;->createGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/a/d;)Lcom/fasterxml/jackson/a/h;

    move-result-object v0

    return-object v0
.end method

.method public createJsonGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/a/h;
    .locals 1
    .parameter "out"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1140
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/e;->createGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/a/h;

    move-result-object v0

    return-object v0
.end method

.method public createJsonParser(Ljava/io/File;)Lcom/fasterxml/jackson/a/l;
    .locals 1
    .parameter "f"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 833
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/e;->createParser(Ljava/io/File;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    return-object v0
.end method

.method public createJsonParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/a/l;
    .locals 1
    .parameter "in"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 885
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/e;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    return-object v0
.end method

.method public createJsonParser(Ljava/io/Reader;)Lcom/fasterxml/jackson/a/l;
    .locals 1
    .parameter "r"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 909
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/e;->createParser(Ljava/io/Reader;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    return-object v0
.end method

.method public createJsonParser(Ljava/lang/String;)Lcom/fasterxml/jackson/a/l;
    .locals 1
    .parameter "content"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 958
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/e;->createParser(Ljava/lang/String;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    return-object v0
.end method

.method public createJsonParser(Ljava/net/URL;)Lcom/fasterxml/jackson/a/l;
    .locals 1
    .parameter "url"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 858
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/e;->createParser(Ljava/net/URL;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    return-object v0
.end method

.method public createJsonParser([B)Lcom/fasterxml/jackson/a/l;
    .locals 1
    .parameter "data"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 925
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/e;->createParser([B)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    return-object v0
.end method

.method public createJsonParser([BII)Lcom/fasterxml/jackson/a/l;
    .locals 1
    .parameter "data"
    .parameter "offset"
    .parameter "len"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 945
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/a/e;->createParser([BII)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    return-object v0
.end method

.method public createParser(Ljava/io/File;)Lcom/fasterxml/jackson/a/l;
    .locals 3
    .parameter "f"

    .prologue
    .line 652
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/a/e;->_createContext(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/a/c/d;

    move-result-object v1

    .line 653
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 655
    iget-object v2, p0, Lcom/fasterxml/jackson/a/e;->_inputDecorator:Lcom/fasterxml/jackson/a/c/e;

    if-eqz v2, :cond_0

    .line 656
    iget-object v0, p0, Lcom/fasterxml/jackson/a/e;->_inputDecorator:Lcom/fasterxml/jackson/a/c/e;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/c/e;->a()Ljava/io/InputStream;

    move-result-object v0

    .line 658
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/e;->_createParser(Ljava/io/InputStream;Lcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    return-object v0
.end method

.method public createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/a/l;
    .locals 2
    .parameter "in"

    .prologue
    .line 709
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/a/e;->_createContext(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/a/c/d;

    move-result-object v0

    .line 711
    iget-object v1, p0, Lcom/fasterxml/jackson/a/e;->_inputDecorator:Lcom/fasterxml/jackson/a/c/e;

    if-eqz v1, :cond_0

    .line 712
    iget-object v1, p0, Lcom/fasterxml/jackson/a/e;->_inputDecorator:Lcom/fasterxml/jackson/a/c/e;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/c/e;->a()Ljava/io/InputStream;

    move-result-object p1

    .line 714
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/a/e;->_createParser(Ljava/io/InputStream;Lcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    return-object v0
.end method

.method public createParser(Ljava/io/Reader;)Lcom/fasterxml/jackson/a/l;
    .locals 2
    .parameter "r"

    .prologue
    .line 735
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/a/e;->_createContext(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/a/c/d;

    move-result-object v0

    .line 737
    iget-object v1, p0, Lcom/fasterxml/jackson/a/e;->_inputDecorator:Lcom/fasterxml/jackson/a/c/e;

    if-eqz v1, :cond_0

    .line 738
    iget-object v1, p0, Lcom/fasterxml/jackson/a/e;->_inputDecorator:Lcom/fasterxml/jackson/a/c/e;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/c/e;->c()Ljava/io/Reader;

    move-result-object p1

    .line 740
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/a/e;->_createParser(Ljava/io/Reader;Lcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    return-object v0
.end method

.method public createParser(Ljava/lang/String;)Lcom/fasterxml/jackson/a/l;
    .locals 3
    .parameter "content"

    .prologue
    .line 796
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 798
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/e;->_createContext(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/a/c/d;

    move-result-object v1

    .line 800
    iget-object v2, p0, Lcom/fasterxml/jackson/a/e;->_inputDecorator:Lcom/fasterxml/jackson/a/c/e;

    if-eqz v2, :cond_0

    .line 801
    iget-object v0, p0, Lcom/fasterxml/jackson/a/e;->_inputDecorator:Lcom/fasterxml/jackson/a/c/e;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/c/e;->c()Ljava/io/Reader;

    move-result-object v0

    .line 803
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/e;->_createParser(Ljava/io/Reader;Lcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    return-object v0
.end method

.method public createParser(Ljava/net/URL;)Lcom/fasterxml/jackson/a/l;
    .locals 3
    .parameter "url"

    .prologue
    .line 680
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/a/e;->_createContext(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/a/c/d;

    move-result-object v1

    .line 681
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/e;->_optimizedStreamFromURL(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v0

    .line 683
    iget-object v2, p0, Lcom/fasterxml/jackson/a/e;->_inputDecorator:Lcom/fasterxml/jackson/a/c/e;

    if-eqz v2, :cond_0

    .line 684
    iget-object v0, p0, Lcom/fasterxml/jackson/a/e;->_inputDecorator:Lcom/fasterxml/jackson/a/c/e;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/c/e;->a()Ljava/io/InputStream;

    move-result-object v0

    .line 686
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/e;->_createParser(Ljava/io/InputStream;Lcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    return-object v0
.end method

.method public createParser([B)Lcom/fasterxml/jackson/a/l;
    .locals 3
    .parameter "data"

    .prologue
    .line 752
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/a/e;->_createContext(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/a/c/d;

    move-result-object v0

    .line 754
    iget-object v1, p0, Lcom/fasterxml/jackson/a/e;->_inputDecorator:Lcom/fasterxml/jackson/a/c/e;

    if-eqz v1, :cond_0

    .line 755
    iget-object v1, p0, Lcom/fasterxml/jackson/a/e;->_inputDecorator:Lcom/fasterxml/jackson/a/c/e;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/c/e;->b()Ljava/io/InputStream;

    move-result-object v1

    .line 756
    if-eqz v1, :cond_0

    .line 757
    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/a/e;->_createParser(Ljava/io/InputStream;Lcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    .line 760
    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/fasterxml/jackson/a/e;->_createParser([BIILcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    goto :goto_0
.end method

.method public createParser([BII)Lcom/fasterxml/jackson/a/l;
    .locals 2
    .parameter "data"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 776
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/a/e;->_createContext(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/a/c/d;

    move-result-object v0

    .line 778
    iget-object v1, p0, Lcom/fasterxml/jackson/a/e;->_inputDecorator:Lcom/fasterxml/jackson/a/c/e;

    if-eqz v1, :cond_0

    .line 779
    iget-object v1, p0, Lcom/fasterxml/jackson/a/e;->_inputDecorator:Lcom/fasterxml/jackson/a/c/e;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/c/e;->b()Ljava/io/InputStream;

    move-result-object v1

    .line 780
    if-eqz v1, :cond_0

    .line 781
    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/a/e;->_createParser(Ljava/io/InputStream;Lcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    .line 784
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/a/e;->_createParser([BIILcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    goto :goto_0
.end method

.method public disable(Lcom/fasterxml/jackson/a/f;)Lcom/fasterxml/jackson/a/e;
    .locals 2
    .parameter "f"

    .prologue
    .line 447
    iget v0, p0, Lcom/fasterxml/jackson/a/e;->_factoryFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/f;->b()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/a/e;->_factoryFeatures:I

    .line 448
    return-object p0
.end method

.method public disable(Lcom/fasterxml/jackson/a/i;)Lcom/fasterxml/jackson/a/e;
    .locals 2
    .parameter "f"

    .prologue
    .line 542
    iget v0, p0, Lcom/fasterxml/jackson/a/e;->_generatorFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/i;->b()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/a/e;->_generatorFeatures:I

    .line 543
    return-object p0
.end method

.method public disable(Lcom/fasterxml/jackson/a/n;)Lcom/fasterxml/jackson/a/e;
    .locals 2
    .parameter "f"

    .prologue
    .line 486
    iget v0, p0, Lcom/fasterxml/jackson/a/e;->_parserFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/n;->b()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/a/e;->_parserFeatures:I

    .line 487
    return-object p0
.end method

.method public enable(Lcom/fasterxml/jackson/a/f;)Lcom/fasterxml/jackson/a/e;
    .locals 2
    .parameter "f"

    .prologue
    .line 438
    iget v0, p0, Lcom/fasterxml/jackson/a/e;->_factoryFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/f;->b()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/a/e;->_factoryFeatures:I

    .line 439
    return-object p0
.end method

.method public enable(Lcom/fasterxml/jackson/a/i;)Lcom/fasterxml/jackson/a/e;
    .locals 2
    .parameter "f"

    .prologue
    .line 533
    iget v0, p0, Lcom/fasterxml/jackson/a/e;->_generatorFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/i;->b()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/a/e;->_generatorFeatures:I

    .line 534
    return-object p0
.end method

.method public enable(Lcom/fasterxml/jackson/a/n;)Lcom/fasterxml/jackson/a/e;
    .locals 2
    .parameter "f"

    .prologue
    .line 477
    iget v0, p0, Lcom/fasterxml/jackson/a/e;->_parserFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/n;->b()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/a/e;->_parserFeatures:I

    .line 478
    return-object p0
.end method

.method public getCharacterEscapes()Lcom/fasterxml/jackson/a/c/c;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/fasterxml/jackson/a/e;->_characterEscapes:Lcom/fasterxml/jackson/a/c/c;

    return-object v0
.end method

.method public getCodec()Lcom/fasterxml/jackson/a/s;
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lcom/fasterxml/jackson/a/e;->_objectCodec:Lcom/fasterxml/jackson/a/s;

    return-object v0
.end method

.method public getFormatName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 367
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/fasterxml/jackson/a/e;

    if-ne v0, v1, :cond_0

    .line 368
    const-string v0, "JSON"

    .line 370
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInputDecorator()Lcom/fasterxml/jackson/a/c/e;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/fasterxml/jackson/a/e;->_inputDecorator:Lcom/fasterxml/jackson/a/c/e;

    return-object v0
.end method

.method public getOutputDecorator()Lcom/fasterxml/jackson/a/c/j;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/fasterxml/jackson/a/e;->_outputDecorator:Lcom/fasterxml/jackson/a/c/j;

    return-object v0
.end method

.method public getRootValueSeparator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/fasterxml/jackson/a/e;->_rootValueSeparator:Lcom/fasterxml/jackson/a/u;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/e;->_rootValueSeparator:Lcom/fasterxml/jackson/a/u;

    invoke-interface {v0}, Lcom/fasterxml/jackson/a/u;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasFormat$2764b24c(Lcom/fasterxml/jackson/a/b/b;)I
    .locals 2
    .parameter "acc"

    .prologue
    .line 376
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/fasterxml/jackson/a/e;

    if-ne v0, v1, :cond_0

    .line 377
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/e;->hasJSONFormat$2764b24c(Lcom/fasterxml/jackson/a/b/b;)I

    move-result v0

    .line 379
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hasJSONFormat$2764b24c(Lcom/fasterxml/jackson/a/b/b;)I
    .locals 1
    .parameter "acc"

    .prologue
    .line 405
    invoke-static {p1}, Lcom/fasterxml/jackson/a/d/a;->a(Lcom/fasterxml/jackson/a/b/b;)I

    move-result v0

    return v0
.end method

.method public final isEnabled(Lcom/fasterxml/jackson/a/f;)Z
    .locals 2
    .parameter "f"

    .prologue
    .line 455
    iget v0, p0, Lcom/fasterxml/jackson/a/e;->_factoryFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/f;->b()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isEnabled(Lcom/fasterxml/jackson/a/i;)Z
    .locals 2
    .parameter "f"

    .prologue
    .line 550
    iget v0, p0, Lcom/fasterxml/jackson/a/e;->_generatorFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/i;->b()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isEnabled(Lcom/fasterxml/jackson/a/n;)Z
    .locals 2
    .parameter "f"

    .prologue
    .line 494
    iget v0, p0, Lcom/fasterxml/jackson/a/e;->_parserFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/n;->b()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 330
    new-instance v0, Lcom/fasterxml/jackson/a/e;

    iget-object v1, p0, Lcom/fasterxml/jackson/a/e;->_objectCodec:Lcom/fasterxml/jackson/a/s;

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/a/e;-><init>(Lcom/fasterxml/jackson/a/e;Lcom/fasterxml/jackson/a/s;)V

    return-object v0
.end method

.method public requiresCustomCodec()Z
    .locals 1

    .prologue
    .line 396
    const/4 v0, 0x0

    return v0
.end method

.method public setCharacterEscapes(Lcom/fasterxml/jackson/a/c/c;)Lcom/fasterxml/jackson/a/e;
    .locals 0
    .parameter "esc"

    .prologue
    .line 566
    iput-object p1, p0, Lcom/fasterxml/jackson/a/e;->_characterEscapes:Lcom/fasterxml/jackson/a/c/c;

    .line 567
    return-object p0
.end method

.method public setCodec(Lcom/fasterxml/jackson/a/s;)Lcom/fasterxml/jackson/a/e;
    .locals 0
    .parameter "oc"

    .prologue
    .line 621
    iput-object p1, p0, Lcom/fasterxml/jackson/a/e;->_objectCodec:Lcom/fasterxml/jackson/a/s;

    .line 622
    return-object p0
.end method

.method public setInputDecorator(Lcom/fasterxml/jackson/a/c/e;)Lcom/fasterxml/jackson/a/e;
    .locals 0
    .parameter "d"

    .prologue
    .line 509
    iput-object p1, p0, Lcom/fasterxml/jackson/a/e;->_inputDecorator:Lcom/fasterxml/jackson/a/c/e;

    .line 510
    return-object p0
.end method

.method public setOutputDecorator(Lcom/fasterxml/jackson/a/c/j;)Lcom/fasterxml/jackson/a/e;
    .locals 0
    .parameter "d"

    .prologue
    .line 582
    iput-object p1, p0, Lcom/fasterxml/jackson/a/e;->_outputDecorator:Lcom/fasterxml/jackson/a/c/j;

    .line 583
    return-object p0
.end method

.method public setRootValueSeparator(Ljava/lang/String;)Lcom/fasterxml/jackson/a/e;
    .locals 1
    .parameter "sep"

    .prologue
    .line 596
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/fasterxml/jackson/a/e;->_rootValueSeparator:Lcom/fasterxml/jackson/a/u;

    .line 597
    return-object p0

    .line 596
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/a/c/l;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/a/c/l;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public version()Lcom/fasterxml/jackson/a/w;
    .locals 1

    .prologue
    .line 416
    sget-object v0, Lcom/fasterxml/jackson/a/d/f;->a:Lcom/fasterxml/jackson/a/w;

    return-object v0
.end method
